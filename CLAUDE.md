# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Ramadhan 20 Koperasi Cms -- a CMS app scaffolded from the YouTube channel cms_template.

## Current State

- **Public home page** (`/`) -- `PagesController#home` with `application` layout (unauthenticated)
- **Authentication** -- Rails 8.1 generated auth with sessions and password reset
- **Admin dashboard** (`/admin`) -- `Admin::DashboardController#index` with `admin` layout (requires admin). Shows live KPI cards: active members count, contributions collected this month, members in arrears (red alert), loans with missed repayments (amber warning). Quick links to members, contributions, and loans pages.
- **Admin namespace** -- `Admin::BaseController` with `require_admin` before_action
- **User model** -- `admin` boolean (default: false, null: false)
- **Dev admin** -- `admin@example.com` / `password123` (created via `admin:setup` rake task, not seeded)
- **Tailwind CSS** -- via `tailwindcss-rails` gem (asset pipeline)
- **Railway deploy** -- `bin/deploy` script, production database config for 4 PostgreSQL databases
- **Announcements** (`/admin/announcements`) -- CRUD with rich text body, kind enum, active scope, dismissible banner
- **Audit Log** (`/admin/audit_logs`) -- polymorphic audit logging with filter toolbar. Add `include Auditable` to any model.
- **User Impersonation** (`/admin/impersonation`) -- admins can view app as another user. Violet banner when active.
- **Dark Mode** -- toggle in topbar, localStorage persistence, CSS custom properties. Disabled for already-dark themes.
- **Image Upload Component** -- reusable partial `render "admin/components/image_upload", name: "model[images][]"`
- **Members** (`/admin/members`) -- Full CRUD for cooperative members. Auto-generated member_id (KWB-001 format), uuid lookup, status enum (active/inactive), Auditable.
- **Contributions** (`/admin/contributions`) -- Full CRUD for monthly member contributions. Paid/missed status, RM amount, month/year. Member.in_arrears scope (2+ missed). Auditable.
- **Loans** (`/admin/loans`) -- Full CRUD for member loans. Outstanding balance calculation, auto-settle on full repayment. Nested loan repayments (new/create). Auditable.
- **Settings** (`/admin/setting/edit`) -- singleton resource for koperasi details (name, registration number, phone, email, address)

## Tech Stack

Deviations from the parent project's shared stack:
- **Tailwind CSS** via `tailwindcss-rails` gem (not plain CSS via Propshaft like other Ramadhan projects)

## Layouts

| Layout | Used by | Notes |
|--------|---------|-------|
| `application` | `PagesController`, `SessionsController`, `PasswordsController` | Top navbar with auth links |
| `admin` | `Admin::*` controllers | Sidebar layout, mobile-responsive with Stimulus toggle |

## Routes

```
GET    /                       pages#home                  (application layout, unauthenticated)
GET    /session/new            sessions#new                (application layout)
POST   /session                sessions#create
DELETE /session                sessions#destroy
GET    /passwords/new          passwords#new               (application layout)
POST   /passwords              passwords#create
GET    /passwords/:token/edit  passwords#edit              (application layout)
PATCH  /passwords/:token       passwords#update
GET    /admin                  admin/dashboard#index       (admin layout, requires admin)
GET    /admin/members          admin/members#index         (admin layout)
GET    /admin/members/new      admin/members#new           (admin layout)
POST   /admin/members          admin/members#create        (admin layout)
GET    /admin/members/:id      admin/members#show          (admin layout)
GET    /admin/members/:id/edit admin/members#edit          (admin layout)
PATCH  /admin/members/:id      admin/members#update        (admin layout)
DELETE /admin/members/:id      admin/members#destroy       (admin layout)
GET    /admin/contributions         admin/contributions#index        (admin layout)
POST   /admin/contributions         admin/contributions#create       (admin layout)
GET    /admin/contributions/new     admin/contributions#new          (admin layout)
GET    /admin/contributions/:id     admin/contributions#show         (admin layout)
GET    /admin/contributions/:id/edit admin/contributions#edit        (admin layout)
PATCH  /admin/contributions/:id     admin/contributions#update       (admin layout)
DELETE /admin/contributions/:id     admin/contributions#destroy      (admin layout)
GET    /admin/loans            admin/loans#index           (admin layout)
GET    /admin/loans/new        admin/loans#new             (admin layout)
POST   /admin/loans            admin/loans#create          (admin layout)
GET    /admin/loans/:id        admin/loans#show            (admin layout)
GET    /admin/loans/:id/edit   admin/loans#edit            (admin layout)
PATCH  /admin/loans/:id        admin/loans#update          (admin layout)
DELETE /admin/loans/:id        admin/loans#destroy         (admin layout)
GET    /admin/loans/:loan_id/loan_repayments/new    admin/loan_repayments#new    (admin layout)
POST   /admin/loans/:loan_id/loan_repayments        admin/loan_repayments#create (admin layout)
GET    /admin/announcements    admin/announcements#index   (admin layout)
POST   /admin/announcements    admin/announcements#create
GET    /admin/announcements/new admin/announcements#new
GET    /admin/announcements/:id/edit admin/announcements#edit
PATCH  /admin/announcements/:id admin/announcements#update
DELETE /admin/announcements/:id admin/announcements#destroy
GET    /admin/audit_logs       admin/audit_logs#index      (admin layout)
POST   /admin/impersonation    admin/impersonations#create (start impersonating)
DELETE /admin/impersonation    admin/impersonations#destroy (stop impersonating)
GET    /admin/setting/edit      admin/settings#edit          (admin layout)
PATCH  /admin/setting           admin/settings#update        (admin layout)
```

## Key Files

- `app/helpers/admin_helper.rb` -- `admin_nav_link` helper with inline Heroicon SVGs, `heroicon(:name)` helper, and `HEROICONS` hash for all available icons
- `app/controllers/admin/base_controller.rb` -- base controller with `require_admin` and `admin` layout
- `app/controllers/concerns/authentication.rb` -- Rails 8.1 auth with injected `current_user` helper
- `app/controllers/concerns/impersonatable.rb` -- overrides `current_user` when impersonating, provides `impersonating?` and `true_user` helpers
- `app/models/member.rb` -- cooperative member with auto-generated KWB member_id, uuid lookup, status enum, in_arrears scope, Auditable
- `app/models/contribution.rb` -- monthly contribution with paid/missed enum, unique per member/month/year, Auditable
- `app/models/loan.rb` -- member loan with outstanding_balance calculation, status enum (active/settled), uuid lookup, Auditable
- `app/models/loan_repayment.rb` -- loan repayment with auto_settle callback, Auditable
- `app/models/announcement.rb` -- rich text body, kind enum, active scope with date range
- `app/models/audit_log.rb` -- polymorphic auditable association, `.log` class method, scopes for filtering/pagination
- `app/models/concerns/auditable.rb` -- auto-logs create/update/destroy via after_commit callbacks
- `app/javascript/controllers/admin_sidebar_controller.js` -- mobile sidebar toggle
- `app/javascript/controllers/image_upload_controller.js` -- drag-and-drop file upload with preview
- `app/javascript/controllers/dark_mode_controller.js` -- toggle with localStorage persistence
- `app/javascript/controllers/announcement_dismiss_controller.js` -- cookie-based dismiss
- `app/assets/stylesheets/admin_dark_mode.css` -- dark mode CSS overrides via `data-dark` attributes
- `lib/tasks/admin.rake` -- admin user management tasks (setup, create, grant, revoke, list)
- `bin/deploy` -- pre-deploy checks (rubocop + tests) then Railway deploy

## Commands

```bash
bin/deploy                                   # Rubocop + tests + railway up --detach
bin/rails admin:setup[email,password]        # Create admin (non-interactive, safe for scripts)
bin/rails admin:create                       # Create admin user (interactive)
bin/rails admin:grant[email]                 # Grant admin to existing user
bin/rails admin:revoke[email]                # Revoke admin from user
bin/rails admin:list                         # List all admin users
bin/setup-worktree                           # Set up worktree with isolated databases
bin/teardown-worktree                        # Drop worktree databases before removal
bin/setup-hooks                              # Configure git hooks path
```

## Architecture Notes

- **Module name:** Ramadhan20KoperasiCms
- **Admin access:** `admin` boolean on User model, checked via `require_admin` in `Admin::BaseController`
- **Background jobs:** Solid Queue, Solid Cache, Solid Cable (4 PostgreSQL databases in production)
- **Railway deploy:** 3-service setup (PostgreSQL + S3 bucket + app)
- **Authentication:** Rails 8.1 generated auth with `bcrypt`. Session-based with signed cookies.

## Git Workflow (MANDATORY)

### Branch Protection

- **master is protected.** Direct commits and pushes to master are blocked by both GitHub rulesets and local git hooks (`.githooks/pre-commit`, `.githooks/pre-push`).
- **All changes go through PRs.** Create a feature branch, push, open a PR, wait for CI green, then merge.
- Git hooks path is set to `.githooks/` — run `git config core.hooksPath .githooks` if hooks aren't firing.

### Branch Naming

- Features: `feature/<name>` (e.g., `feature/admin-services-crud`)
- Fixes: `fix/<name>` (e.g., `fix/double-navbar`)
- Chores: `chore/<name>` (e.g., `chore/update-readme`)

### Commit Style

- Use **atomic commits** — one logical change per commit. Don't bundle unrelated changes.
- Prefix: `feat:`, `fix:`, `chore:`, `refactor:`, `test:`, `docs:`
- Every commit must pass rubocop and tests (enforced by pre-commit hook).

### Git Worktrees

- Use worktrees for parallel work streams (e.g., multiple CRUD features).
- **NEVER delete a worktree until its PR is merged and confirmed working.** Worktrees contain the working environment — deleting prematurely means lost work.
- After PR merge, ask the user before removing the worktree.
- **Database isolation is automatic.** Each worktree gets its own PostgreSQL databases (suffixed `_wt_<worktree-name>`). No manual config needed.
- **Setup a worktree:** `git worktree add .claude/worktrees/<name> -b feature/<name>` then `cd` into it and run `bin/setup-worktree`.
- **Teardown:** `cd` into the worktree, run `bin/teardown-worktree`, then `git worktree remove <path>`.

### Parallel Agent Teams

When spawning multiple agent teammates for parallel work:
- Each teammate gets its own **worktree** (via `isolation: "worktree"` or manual `git worktree add`).
- Each worktree works on its own feature branch with its own isolated databases.
- Teammates must check `TaskList` after completing each task to find the next available work.
- Teammates must send a message to the team lead when all assigned tasks are done.
- Team lead is responsible for: pushing branches, opening PRs, rebasing onto master after earlier PRs merge, watching CI, and merging.
- **Shutdown teammates** via `SendMessage` with `type: "shutdown_request"` when their work is done.

## Common Pitfalls

- **Always read before edit.** Use the `Read` tool to read a file before using `Write` or `Edit` on it.
- **Use `find_or_initialize_by` + `update!`** instead of `find_or_create_by!` with a block — the block is silently skipped if the record already exists (e.g., from a callback).
- **Use `insert_all!` in seeds/scripts** to bypass callbacks (no emails/WhatsApp in seed data).
- **Turbo Frames trap links.** Links inside a `turbo_frame_tag` that navigate to a different page need `data: { turbo_frame: "_top" }`.
- **Never nest `button_to` inside `form_with`.** `button_to` generates its own `<form>` — nesting creates invalid HTML.
- **Never use `bin/rails stimulus:manifest:update`** — it generates static imports that bypass importmap and cause 404s for ALL Stimulus controllers.

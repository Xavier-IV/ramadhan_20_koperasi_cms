require "test_helper"

class AdminAuditLogsTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as users(:admin)
    AuditLog.log(user: users(:admin), action: "created", auditable: users(:regular))
  end

  test "index shows audit logs" do
    get admin_audit_logs_path
    assert_response :success
    assert_select "table"
  end

  test "index filters by action" do
    AuditLog.log(user: users(:admin), action: "deleted", auditable: users(:regular))

    get admin_audit_logs_path(action_filter: "created")
    assert_response :success
  end

  test "non-admin cannot access audit logs" do
    sign_in_as users(:regular)
    get admin_audit_logs_path
    assert_redirected_to root_path
  end
end

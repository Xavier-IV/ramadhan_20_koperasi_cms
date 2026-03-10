require "test_helper"

class AdminAnnouncementsTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as users(:admin)
  end

  test "index lists announcements" do
    get admin_announcements_path
    assert_response :success
    assert_select "td", text: announcements(:active_info).title
  end

  test "new renders form" do
    get new_admin_announcement_path
    assert_response :success
    assert_select "form"
  end

  test "create with valid params" do
    assert_difference "Announcement.count", 1 do
      post admin_announcements_path, params: { announcement: { title: "Test", kind: "info" } }
    end
    assert_redirected_to admin_announcements_path
    follow_redirect!
    assert_select ".notice, [class*='flash']", /created/i
  end

  test "create with invalid params re-renders" do
    assert_no_difference "Announcement.count" do
      post admin_announcements_path, params: { announcement: { title: "" } }
    end
    assert_response :unprocessable_entity
  end

  test "edit renders form" do
    get edit_admin_announcement_path(announcements(:active_info))
    assert_response :success
    assert_select "form"
  end

  test "update with valid params" do
    patch admin_announcement_path(announcements(:active_info)), params: { announcement: { title: "Updated" } }
    assert_redirected_to admin_announcements_path
    assert_equal "Updated", announcements(:active_info).reload.title
  end

  test "destroy removes announcement" do
    assert_difference "Announcement.count", -1 do
      delete admin_announcement_path(announcements(:active_info))
    end
    assert_redirected_to admin_announcements_path
  end
end

require "test_helper"

class AdminMembersTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as users(:admin)
  end

  test "index lists members" do
    get admin_members_path
    assert_response :success
    assert_select "td", text: members(:ahmad).member_id
    assert_select "td", text: members(:siti).name
  end

  test "show displays member details" do
    get admin_member_path(members(:ahmad))
    assert_response :success
    assert_select "dd", text: members(:ahmad).member_id
    assert_select "dd", text: members(:ahmad).name
  end

  test "new renders form" do
    get new_admin_member_path
    assert_response :success
    assert_select "form"
  end

  test "create with valid params" do
    assert_difference "Member.count", 1 do
      post admin_members_path, params: {
        member: { name: "New Member", ic_number: "999999-99-9999", join_date: Date.current, status: "active" }
      }
    end
    assert_redirected_to admin_members_path
    follow_redirect!
    assert_match(/created/i, response.body)
  end

  test "create with invalid params re-renders" do
    assert_no_difference "Member.count" do
      post admin_members_path, params: {
        member: { name: "", ic_number: "", join_date: "" }
      }
    end
    assert_response :unprocessable_entity
  end

  test "edit renders form" do
    get edit_admin_member_path(members(:ahmad))
    assert_response :success
    assert_select "form"
  end

  test "update with valid params" do
    patch admin_member_path(members(:ahmad)), params: { member: { name: "Updated Name" } }
    assert_redirected_to admin_member_path(members(:ahmad))
    assert_equal "Updated Name", members(:ahmad).reload.name
  end

  test "update with invalid params re-renders" do
    patch admin_member_path(members(:ahmad)), params: { member: { name: "" } }
    assert_response :unprocessable_entity
  end

  test "destroy removes member" do
    assert_difference "Member.count", -1 do
      delete admin_member_path(members(:ahmad))
    end
    assert_redirected_to admin_members_path
  end
end

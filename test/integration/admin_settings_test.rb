require "test_helper"

class AdminSettingsTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as users(:admin)
  end

  test "edit renders form" do
    get edit_admin_setting_path
    assert_response :success
    assert_select "form"
    assert_select "input[name='setting[koperasi_name]']"
  end

  test "update with valid params redirects with flash" do
    patch admin_setting_path, params: { setting: { koperasi_name: "Updated Koperasi" } }
    assert_redirected_to edit_admin_setting_path
    follow_redirect!
    assert_match /updated/i, response.body
    assert_equal "Updated Koperasi", Setting.current.koperasi_name
  end

  test "update with blank name re-renders edit" do
    patch admin_setting_path, params: { setting: { koperasi_name: "" } }
    assert_response :unprocessable_entity
    assert_select "form"
  end
end

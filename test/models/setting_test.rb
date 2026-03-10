require "test_helper"

class SettingTest < ActiveSupport::TestCase
  setup do
    Setting.delete_all
  end

  test "validates koperasi_name presence" do
    setting = Setting.new(koperasi_name: "")
    assert_not setting.valid?
    assert_includes setting.errors[:koperasi_name], "can't be blank"
  end

  test ".current creates a setting if none exists" do
    assert_equal 0, Setting.count
    setting = Setting.current
    assert_equal 1, Setting.count
    assert_equal "Koperasi Warga Bahagia", setting.koperasi_name
  end

  test ".current returns existing record" do
    existing = Setting.create!(koperasi_name: "My Koperasi")
    assert_equal existing, Setting.current
    assert_equal 1, Setting.count
  end
end

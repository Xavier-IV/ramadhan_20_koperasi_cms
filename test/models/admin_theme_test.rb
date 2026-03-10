require "test_helper"

class AdminThemeTest < ActiveSupport::TestCase
  test "all three themes exist" do
    assert AdminTheme::THEMES.key?(:swiss_mono)
    assert AdminTheme::THEMES.key?(:ink)
    assert AdminTheme::THEMES.key?(:classic)
  end

  test "all themes have identical key structure" do
    reference_keys = deep_keys(AdminTheme::THEMES[:ink])

    AdminTheme::THEMES.each do |theme_name, theme_hash|
      theme_keys = deep_keys(theme_hash)
      missing = reference_keys - theme_keys
      extra = theme_keys - reference_keys

      assert missing.empty?, "#{theme_name} missing keys: #{missing.join(', ')}"
      assert extra.empty?, "#{theme_name} has extra keys: #{extra.join(', ')}"
    end
  end

  test "ts returns a String for valid lookups" do
    result = AdminTheme.ts(:layout, :body)
    assert_instance_of String, result
  end

  test "ts returns nil for invalid lookups" do
    assert_nil AdminTheme.ts(:nonexistent, :nope)
    assert_nil AdminTheme.ts(:layout, :nonexistent)
  end

  private

  def deep_keys(hash, prefix = "")
    hash.flat_map do |key, value|
      full_key = prefix.empty? ? key.to_s : "#{prefix}.#{key}"
      if value.is_a?(Hash)
        deep_keys(value, full_key)
      else
        [full_key]
      end
    end
  end
end

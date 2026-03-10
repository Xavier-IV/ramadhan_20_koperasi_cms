require "test_helper"

class AnnouncementTest < ActiveSupport::TestCase
  test "validates title presence" do
    announcement = Announcement.new(title: nil)
    assert_not announcement.valid?
    assert_includes announcement.errors[:title], "can't be blank"
  end

  test "active scope returns only active announcements" do
    active = announcements(:active_info)
    inactive = announcements(:inactive)

    result = Announcement.active
    assert_includes result, active
    assert_not_includes result, inactive
  end

  test "active scope respects date range" do
    announcement = announcements(:active_info)
    announcement.update!(starts_at: 1.day.from_now)

    assert_not_includes Announcement.active, announcement
  end

  test "ordered scope sorts by created_at desc" do
    result = Announcement.ordered
    assert_equal result, result.sort_by(&:created_at).reverse
  end

  test "kind enum works" do
    announcement = Announcement.new(title: "Test", kind: :warning)
    assert announcement.warning?
    assert_equal 1, Announcement.kinds[:warning]
  end
end

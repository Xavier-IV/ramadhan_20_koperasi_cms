require "test_helper"

class AuditLogTest < ActiveSupport::TestCase
  test "validates action presence" do
    log = AuditLog.new(user: users(:admin), action: nil, auditable_type: "User", auditable_id: "1")
    assert_not log.valid?
    assert_includes log.errors[:action], "can't be blank"
  end

  test "validates action inclusion" do
    log = AuditLog.new(user: users(:admin), action: "invalid", auditable_type: "User", auditable_id: "1")
    assert_not log.valid?
    assert_includes log.errors[:action], "is not included in the list"
  end

  test ".log creates an audit log entry" do
    assert_difference "AuditLog.count", 1 do
      AuditLog.log(user: users(:admin), action: "created", auditable: users(:regular))
    end

    log = AuditLog.last
    assert_equal "created", log.action
    assert_equal "User", log.auditable_type
    assert_equal users(:regular).id.to_s, log.auditable_id
  end

  test "recent scope orders by created_at desc" do
    AuditLog.log(user: users(:admin), action: "created", auditable: users(:regular))
    AuditLog.log(user: users(:admin), action: "updated", auditable: users(:regular))

    result = AuditLog.recent
    assert result.first.created_at >= result.last.created_at
  end

  test "by_action scope filters correctly" do
    AuditLog.log(user: users(:admin), action: "created", auditable: users(:regular))
    AuditLog.log(user: users(:admin), action: "deleted", auditable: users(:regular))

    assert_equal 1, AuditLog.by_action("created").count
    assert_equal 1, AuditLog.by_action("deleted").count
  end

  test "by_action scope returns all when action is blank" do
    AuditLog.log(user: users(:admin), action: "created", auditable: users(:regular))
    AuditLog.log(user: users(:admin), action: "deleted", auditable: users(:regular))

    assert_equal 2, AuditLog.by_action(nil).count
    assert_equal 2, AuditLog.by_action("").count
  end

  test "page scope paginates" do
    30.times { AuditLog.log(user: users(:admin), action: "created", auditable: users(:regular)) }

    assert_equal 25, AuditLog.page(1).count
    assert_equal 5, AuditLog.page(2).count
  end
end

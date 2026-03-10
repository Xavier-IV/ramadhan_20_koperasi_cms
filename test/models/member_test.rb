require "test_helper"

class MemberTest < ActiveSupport::TestCase
  test "validates name presence" do
    member = Member.new(ic_number: "999999-99-9999", join_date: Date.current)
    assert_not member.valid?
    assert_includes member.errors[:name], "can't be blank"
  end

  test "validates ic_number presence" do
    member = Member.new(name: "Test", join_date: Date.current)
    assert_not member.valid?
    assert_includes member.errors[:ic_number], "can't be blank"
  end

  test "validates join_date presence" do
    member = Member.new(name: "Test", ic_number: "999999-99-9999")
    assert_not member.valid?
    assert_includes member.errors[:join_date], "can't be blank"
  end

  test "validates ic_number uniqueness" do
    member = Member.new(name: "Test", ic_number: members(:ahmad).ic_number, join_date: Date.current)
    assert_not member.valid?
    assert_includes member.errors[:ic_number], "has already been taken"
  end

  test "generates member_id on create" do
    member = Member.create!(name: "New Member", ic_number: "999999-99-9999", join_date: Date.current)
    assert_match(/\AKWB-\d{3}\z/, member.member_id)
  end

  test "generates uuid on create" do
    member = Member.create!(name: "New Member", ic_number: "999999-99-9998", join_date: Date.current)
    assert member.uuid.present?
  end

  test "does not overwrite existing member_id" do
    member = Member.new(name: "Test", ic_number: "999999-99-9997", join_date: Date.current, member_id: "KWB-999")
    member.save!
    assert_equal "KWB-999", member.member_id
  end

  test "status enum defaults to active" do
    member = Member.new
    assert member.active?
  end

  test "active scope returns active members" do
    assert_includes Member.active, members(:ahmad)
    assert_not_includes Member.active, members(:inactive_zainal)
  end

  test "inactive scope returns inactive members" do
    assert_includes Member.inactive, members(:inactive_zainal)
    assert_not_includes Member.inactive, members(:ahmad)
  end

  test "to_param returns uuid" do
    assert_equal members(:ahmad).uuid, members(:ahmad).to_param
  end
end

require 'test_helper'

class WolfTest < ActiveSupport::TestCase
  test "wolves can be made" do
    assert Wolf.new(name: 'Drew')
  end

  test "picture_url is required" do
    wolf = Wolf.new(name: 'Drew')
    refute wolf.valid?
    assert_includes wolf.errors[:picture_url], "You need a profile picture URL"
  end
end

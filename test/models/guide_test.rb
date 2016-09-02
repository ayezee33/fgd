require 'test_helper'

class GuideTest < ActiveSupport::TestCase

  def setup
    @example_guide = Guide.new( guide_name: "Example Guide", address: "123 Example St", city: "Portland", state: "Oregon", phone_number: "1234567890" )
  end

  test "should be valid" do
    assert @example_guide.valid?
  end

  # tests for presence
  test "guide_name should be present" do
    @example_guide.guide_name = ""
    assert_not @example_guide.valid?
  end

  test "address should be present" do
    @example_guide.address = ""
    assert_not @example_guide.valid?
  end

  test "city should be present" do
    @example_guide.city = ""
    assert_not @example_guide.valid?
  end

  test "state should be present" do
    @example_guide.state = ""
    assert_not @example_guide.valid?
  end

  test "phone_number should be present" do
    @example_guide.phone_number = ""
    assert_not @example_guide.valid?
  end
  # end tests for presence

  # tests for length
  test "guide_name should not be too long" do
    @example_guide.guide_name = "a" * 51
    assert_not @example_guide.valid?
  end

  test "address should not be too long" do
    @example_guide.address = "a" * 51
    assert_not @example_guide.valid?
  end

  test "city should not be too long" do
    @example_guide.city = "a" * 18
    assert_not @example_guide.valid?
  end

  test "state should not be too short" do
    @example_guide.state = "a" * 3
    assert_not @example_guide.valid?
  end

  test "state should not be too long" do
    @example_guide.state = "a" * 13
    assert_not @example_guide.valid?
  end

  test "phone_number should not be too short" do
    @example_guide.phone_number = "a" * 9
    assert_not @example_guide.valid?
  end

  test "phone_number should not be too long" do
    @example_guide.phone_number = "a" * 17
    assert_not @example_guide.valid?
  end
  # end tests for length

end

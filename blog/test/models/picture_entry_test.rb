require 'test_helper'

class PictureEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
  	@picture1 = picture_entries(:firstpic)
  	@picture2 = picture_entries(:secondpic)
  end

  test "make sure association works here" do
     assert_equal "sunny day", @picture1.title
   end

  test "picture title can be set" do
  	@picture2.title = "CoolPic"
  	assert_equal "CoolPic", @picture2.title
  end

  test "number of likes per picture" do
  	assert_equal 2, @picture1.likes.size 
  	assert_equal 1, @picture2.likes.size
  end
end

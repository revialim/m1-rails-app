require 'test_helper'

class ToestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toest = toests(:one)
  end

  test "should get index" do
    get toests_url
    assert_response :success
  end

#  test "should get new" do
#    get new_toest_url
#    assert_response :success
#  end

#  test "should create toest" do
#    assert_difference('Toest.count') do
#      post toests_url, params: { toest: { crunchiness: @toest.crunchiness, name: @toest.name, price: @toest.price, sweet: @toest.sweet } }
#    end
#
#    assert_redirected_to toest_url(Toest.last)
#  end

  test "should show toest" do
    get toest_url(@toest)
    assert_response :success
  end

#  test "should get edit" do
#    get edit_toest_url(@toest)
#    assert_response :success
#  end

  test "should update toest" do
    patch toest_url(@toest), params: { toest: { crunchiness: @toest.crunchiness, name: @toest.name, price: @toest.price, sweet: @toest.sweet } }
    assert_redirected_to toest_url(@toest)
  end

#  test "should destroy toest" do
#    assert_difference('Toest.count', -1) do
#      delete toest_url(@toest)
#    end
#
#    assert_redirected_to toests_url
#  end
end

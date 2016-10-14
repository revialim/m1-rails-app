require 'test_helper'

class PictureEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture_entry = picture_entries(:one)
  end

  test "should get index" do
    get picture_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_picture_entry_url
    assert_response :success
  end

  test "should create picture_entry" do
    assert_difference('PictureEntry.count') do
      post picture_entries_url, params: { picture_entry: { description: @picture_entry.description, location: @picture_entry.location, picture: @picture_entry.picture, title: @picture_entry.title } }
    end

    assert_redirected_to picture_entry_url(PictureEntry.last)
  end

  test "should show picture_entry" do
    get picture_entry_url(@picture_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_picture_entry_url(@picture_entry)
    assert_response :success
  end

  test "should update picture_entry" do
    patch picture_entry_url(@picture_entry), params: { picture_entry: { description: @picture_entry.description, location: @picture_entry.location, picture: @picture_entry.picture, title: @picture_entry.title } }
    assert_redirected_to picture_entry_url(@picture_entry)
  end

  test "should destroy picture_entry" do
    assert_difference('PictureEntry.count', -1) do
      delete picture_entry_url(@picture_entry)
    end

    assert_redirected_to picture_entries_url
  end
end

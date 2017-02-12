require 'test_helper'

class OneClickLogTest < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper

  test "create picture without file yet" do
    picture_entry = picture_entries(:firstpic)

    visit picture_entries_path
    assert page.has_content? picture_entry.name

    #find_button(id: "button-#{picture_entry.id}").click

    # log date should be shown on page
    # assert page.has_content?  Date.today.to_s
    # habit should have last log date
    # assert_equal Date.today, habit.last_log_date
  end
end
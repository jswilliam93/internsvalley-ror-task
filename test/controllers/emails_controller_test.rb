require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get check" do
    get emails_check_url
    assert_response :success
  end

end

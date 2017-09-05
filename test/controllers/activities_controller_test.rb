require 'test_helper'

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get activities_url
    assert_response :success

    assert_select "tbody>tr", { count: 2 }

    assert_select "tbody" do
      assert_select "tr:nth-child(1)" do
        assert_select "td:nth-child(1)", "First Activity"
      end

      assert_select "tr:nth-child(2)" do
        assert_select "td:nth-child(1)", "Second Activity"
      end
    end
  end

  test "should show activity" do
    get activity_url(@activity)
    assert_response :success
  end
end

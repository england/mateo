require 'test_helper'

class StatControllerTest < ActionDispatch::IntegrationTest
  test "should get #medium" do
    get stat_medium_url
    assert_response :success

    # IO.write('/tmp/zzz.html', @response.body)

    assert_select "tbody>tr", { count: 3 }

    assert_select "tbody" do
      assert_select "tr:nth-child(1)" do
        assert_select "td:nth-child(1)", "organic"
        assert_select "td:nth-child(2)", "2"
        assert_select "td:nth-child(3)", "50"
      end

      assert_select "tr:nth-child(2)" do
        assert_select "td:nth-child(1)", "cpc"
        assert_select "td:nth-child(2)", "1"
        assert_select "td:nth-child(3)", "10"
      end


      assert_select "tr:nth-child(3)" do
        assert_select "td:nth-child(1)", "email"
        assert_select "td:nth-child(2)", "1"
        assert_select "td:nth-child(3)", "10"
      end
    end
  end
end

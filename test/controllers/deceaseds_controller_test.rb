require "test_helper"

class DeceasedsControllerTest < ActionDispatch::IntegrationTest
  test "shoud get new" do
    get new_plot_deceased_url(plots(:one))
    assert_response :success
  end

  test "should create deceased" do
    assert_difference("Deceased.count") do
      post plot_deceaseds_url(plots(:one)), params: { deceased: { name: "John Doe" } }
    end

    assert_redirected_to plot_url(plots(:one))
  end
end

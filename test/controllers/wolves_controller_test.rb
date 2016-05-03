require 'test_helper'

class WolvesControllerTest < ActionController::TestCase
  test "#index" do
    get :index
    assert_response :success
  end

  test "#new" do
    get :new
    assert_response :success
  end

  test "#create invalid attributes" do
    post :create, wolf: {name: 'Drew'}

    assert_response :ok
    assert_template :new
  end

  test "#create valid attributes" do
    post :create, wolf: {name: 'Drew', picture_url: 'abc123'}

    assert_redirected_to wolves_path
  end

end

require 'test_helper'

class HowlsControllerTest < ActionController::TestCase
  test "#new" do
    get :new
    assert_response :success
  end

  test "#create invalid attributes" do
    post :create, howl: {content: 'Drew'}

    assert_response :ok
    assert_template :new
  end

  test "#create valid attributes" do
    wolf = Wolf.create(picture_url: '123')
    post :create, howl: {content: 'Drew', wolf_id: wolf.id}

    assert_redirected_to wolves_path
  end

end

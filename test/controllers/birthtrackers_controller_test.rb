require "test_helper"

class BirthtrackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @birthtracker = birthtrackers(:one)
  end

  test "should get index" do
    get birthtrackers_url
    assert_response :success
  end

  test "should get new" do
    get new_birthtracker_url
    assert_response :success
  end

  test "should create birthtracker" do
    assert_difference('Birthtracker.count') do
      post birthtrackers_url, params: { birthtracker: { birthdate: @birthtracker.birthdate, email: @birthtracker.email, first_name: @birthtracker.first_name, last_name: @birthtracker.last_name } }
    end

    assert_redirected_to birthtracker_url(Birthtracker.last)
  end

  test "should show birthtracker" do
    get birthtracker_url(@birthtracker)
    assert_response :success
  end

  test "should get edit" do
    get edit_birthtracker_url(@birthtracker)
    assert_response :success
  end

  test "should update birthtracker" do
    patch birthtracker_url(@birthtracker), params: { birthtracker: { birthdate: @birthtracker.birthdate, email: @birthtracker.email, first_name: @birthtracker.first_name, last_name: @birthtracker.last_name } }
    assert_redirected_to birthtracker_url(@birthtracker)
  end

  test "should destroy birthtracker" do
    assert_difference('Birthtracker.count', -1) do
      delete birthtracker_url(@birthtracker)
    end

    assert_redirected_to birthtrackers_url
  end
end

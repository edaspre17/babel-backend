require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

#  test "should get index" do
#    get users_url, as: :json
#    assert_response :success
#  end

  test "should create user" do
    assert_difference('User.count') do
      #post users_url, params: { user: { archived: @user.archived, email: @user.email, id_user: @user.id_user, imagepath: @user.imagepath, inserts_date: @user.inserts_date, job: @user.job, name: @user.name, note: @user.note, phone: @user.phone, pwd: @user.pwd, surname: @user.surname, version: @user.version } }, as: :json
      post users_url, params: { user: { archived: @user.archived, email: @user.email, imagepath: @user.imagepath, inserts_date: @user.inserts_date, job: @user.job, name: @user.name, note: @user.note, phone: @user.phone, pwd: @user.pwd, surname: @user.surname, version: @user.version } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    #patch user_url(@user), params: { user: { archived: @user.archived, email: @user.email, id_user: @user.id_user, imagepath: @user.imagepath, inserts_date: @user.inserts_date, job: @user.job, name: @user.name, note: @user.note, phone: @user.phone, pwd: @user.pwd, surname: @user.surname, version: @user.version } }, as: :json
    patch user_url(@user), params: { user: { archived: @user.archived, email: @user.email, imagepath: @user.imagepath, inserts_date: @user.inserts_date, job: @user.job, name: @user.name, note: @user.note, phone: @user.phone, pwd: @user.pwd, surname: @user.surname, version: @user.version } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end

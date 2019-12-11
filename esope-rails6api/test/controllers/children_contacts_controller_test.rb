require 'test_helper'

class ChildrenContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @children_contact = children_contacts(:one)
  end

  test "should get index" do
    get children_contacts_url, as: :json
    assert_response :success
  end

  test "should create children_contact" do
    assert_difference('ChildrenContact.count') do
      post children_contacts_url, params: { children_contact: { child_id: @children_contact.child_id, insert_date: @children_contact.insert_date, relation: @children_contact.relation, user_id: @children_contact.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show children_contact" do
    get children_contact_url(@children_contact), as: :json
    assert_response :success
  end

  test "should update children_contact" do
    patch children_contact_url(@children_contact), params: { children_contact: { child_id: @children_contact.child_id, insert_date: @children_contact.insert_date, relation: @children_contact.relation, user_id: @children_contact.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy children_contact" do
    assert_difference('ChildrenContact.count', -1) do
      delete children_contact_url(@children_contact), as: :json
    end

    assert_response 204
  end
end

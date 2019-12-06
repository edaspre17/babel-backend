require 'test_helper'

class ChildContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @child_contact = child_contacts(:one)
  end

  test "should get index" do
    get child_contacts_url, as: :json
    assert_response :success
  end

  test "should create child_contact" do
    assert_difference('ChildContact.count') do
      post child_contacts_url, params: { child_contact: { id_child: @child_contact.id_child, id_user: @child_contact.id_user, insert_date: @child_contact.insert_date, relation: @child_contact.relation } }, as: :json
    end

    assert_response 201
  end

  test "should show child_contact" do
    get child_contact_url(@child_contact), as: :json
    assert_response :success
  end

  test "should update child_contact" do
    patch child_contact_url(@child_contact), params: { child_contact: { id_child: @child_contact.id_child, id_user: @child_contact.id_user, insert_date: @child_contact.insert_date, relation: @child_contact.relation } }, as: :json
    assert_response 200
  end

  test "should destroy child_contact" do
    assert_difference('ChildContact.count', -1) do
      delete child_contact_url(@child_contact), as: :json
    end

    assert_response 204
  end
end

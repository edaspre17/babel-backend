class ChildContactsController < ApplicationController
  before_action :set_child_contact, only: [:show, :update, :destroy]

  # GET /child_contacts
  def index
    @child_contacts = ChildContact.all

    render json: @child_contacts
  end

  # GET /child_contacts/1
  def show
    render json: @child_contact
  end

  # POST /child_contacts
  def create
    @child_contact = ChildContact.new(child_contact_params)

    if @child_contact.save
      render json: @child_contact, status: :created, location: @child_contact
    else
      render json: @child_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /child_contacts/1
  def update
    if @child_contact.update(child_contact_params)
      render json: @child_contact
    else
      render json: @child_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /child_contacts/1
  def destroy
    @child_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_contact
      @child_contact = ChildContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def child_contact_params
      params.require(:child_contact).permit(:id_user, :id_child, :insert_date, :relation)
    end
end

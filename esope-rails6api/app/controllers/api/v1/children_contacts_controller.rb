class Api::V1::ChildrenContactsController < ApplicationController
  before_action :set_children_contact, only: [:show, :update, :destroy]

  # GET /children_contacts
  def index
    @children_contacts = ChildrenContact.all
    render json: @children_contacts
  end

  # GET /children_contacts/1
  def show
    render json: @children_contact
  end

  # GET /children_contacts/listChildren/1
  #renvoie la liste des enfants d'un tuteur/parent
  def listChildren 
    @cc = ChildrenContact.find_by_sql(["Select * FROM children_contacts cc, children c 
    WHERE cc.user_id = ? AND cc.child_id = c.id", params[:id]])
    render json: @cc
  end
  
  # GET /children_contacts/listChildren/1
  #renvoie la liste des proches qu'a eu un enfant
  def listContacts
    @cc = ChildrenContact.find_by_sql(["Select * FROM users u , children_contacts cc
    WHERE u.id = cc.user_id AND cc.child_id = ? AND u.user_level = 0", params[:id]])
    render json: @cc
  end

  # POST /children_contacts
  def create
    @children_contact = ChildrenContact.new(children_contact_params)

    if @children_contact.save
      render json: @children_contact, status: :created, location: nil
    else
      render json: @children_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /children_contacts/1
  def update
    if @children_contact.update(children_contact_params)
      render json: @children_contact
    else
      render json: @children_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /children_contacts/1
  def destroy
    @children_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_children_contact
      @children_contact = ChildrenContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def children_contact_params
      params.require(:children_contact).permit(:user_id, :child_id, :insert_date, :relation, :option, :id)
    end
end
 
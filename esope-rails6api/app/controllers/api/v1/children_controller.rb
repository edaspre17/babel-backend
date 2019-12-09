class Api::V1::ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :update, :destroy]

  # GET /children
  def index
    @children = Child.all

    render json: @children
  end

  # GET /children/1
  def show
    render json: @child
  end

  # POST /children
  def create
    @child = Child.new(child_params)

    if @child.save
      render json: @child, status: :created, location: @child
    else
      render json: @child.errors, status: :unprocessable_entity
    end
  end

  # POST /children/login/
  def login
    @user = Child.find_by_sql(["SELECT id, name, surname, birthday, lang, hand, school, school_type, 
    school_lvl, imagepath, note, version FROM children WHERE id = ? AND archived IS NULL OR archived = false", child_params['id']])
    render json: @user
  end

  # PATCH/PUT /children/1
  def update
    if @child.update(child_params)
      render json: @child
    else
      render json: @child.errors, status: :unprocessable_entity
    end
  end

  # DELETE /children/1
  def destroy
    @child.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child
      @child = Child.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def child_params
      params.require(:child).permit(:name, :surname, :birthday, :lang, :hand, :school, :school_type, :school_lvl, :imagepath, :note, :archived, :version, :id_child, :id)
    end
end

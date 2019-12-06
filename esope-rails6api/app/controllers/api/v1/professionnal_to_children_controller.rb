class Api::V1::ProfessionnalToChildrenController < ApplicationController
  before_action :set_professionnal_to_child, only: [:show, :update, :destroy]

  # GET /professionnal_to_children
  def index
    @professionnal_to_children = ProfessionnalToChild.all

    render json: @professionnal_to_children
  end

  # GET /professionnal_to_children/1
  def show
    render json: @professionnal_to_child
  end

  # POST /professionnal_to_children
  def create
    @professionnal_to_child = ProfessionnalToChild.new(professionnal_to_child_params)

    if @professionnal_to_child.save
      render json: @professionnal_to_child, status: :created, location: @professionnal_to_child
    else
      render json: @professionnal_to_child.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /professionnal_to_children/1
  def update
    if @professionnal_to_child.update(professionnal_to_child_params)
      render json: @professionnal_to_child
    else
      render json: @professionnal_to_child.errors, status: :unprocessable_entity
    end
  end

  # DELETE /professionnal_to_children/1
  def destroy
    @professionnal_to_child.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professionnal_to_child
      @professionnal_to_child = ProfessionnalToChild.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def professionnal_to_child_params
      params.require(:professionnal_to_child).permit(:id_care, :id_child, :id_user_prof, :start_care_date, :end_care_date)
    end
end

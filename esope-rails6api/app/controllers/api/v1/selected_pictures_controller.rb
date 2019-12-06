class Api::V1::SelectedPicturesController < ApplicationController
  before_action :set_selected_picture, only: [:show, :update, :destroy]

  # GET /selected_pictures
  def index
    @selected_pictures = SelectedPicture.all

    render json: @selected_pictures
  end

  # GET /selected_pictures/1
  def show
    render json: @selected_picture
  end

  # POST /selected_pictures
  def create
    @selected_picture = SelectedPicture.new(selected_picture_params)

    if @selected_picture.save
      render json: @selected_picture, status: :created, location: @selected_picture
    else
      render json: @selected_picture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /selected_pictures/1
  def update
    if @selected_picture.update(selected_picture_params)
      render json: @selected_picture
    else
      render json: @selected_picture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /selected_pictures/1
  def destroy
    @selected_picture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_picture
      @selected_picture = SelectedPicture.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def selected_picture_params
      params.require(:selected_picture).permit(:note, :child_tag, :do_like, :is_happy, :is_autonomous, :priority, :would_like, :step_one_done, :step_two_done, :step_three_done, :id_pic, :id_game, :version)
    end
end

class Api::V1::PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :update, :destroy]

  # GET /pictures
  def index
    @pictures = Picture.all

    render json: @pictures
  end

  # GET /pictures/1
  def show
    render json: @picture
  end

  # POST /pictures
  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      render json: @picture, status: :created, location: nil
    else
      render json: @picture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pictures/1
  def update
    if @picture.update(picture_params)
      render json: @picture
    else
      render json: @picture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pictures/1
  def destroy
    @picture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def picture_params
      params.require(:picture).permit(:description, :path, :picture, :category_id)
    end
end

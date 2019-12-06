class Api::V1::HandicapToChildrenController < ApplicationController
  before_action :set_handicap_to_child, only: [:show, :update, :destroy]

  # GET /handicap_to_children
  def index
    @handicap_to_children = HandicapToChild.all

    render json: @handicap_to_children
  end

  # GET /handicap_to_children/1
  def show
    render json: @handicap_to_child
  end

  # POST /handicap_to_children
  def create
    @handicap_to_child = HandicapToChild.new(handicap_to_child_params)

    if @handicap_to_child.save
      render json: @handicap_to_child, status: :created, location: @handicap_to_child
    else
      render json: @handicap_to_child.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /handicap_to_children/1
  def update
    if @handicap_to_child.update(handicap_to_child_params)
      render json: @handicap_to_child
    else
      render json: @handicap_to_child.errors, status: :unprocessable_entity
    end
  end

  # DELETE /handicap_to_children/1
  def destroy
    @handicap_to_child.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handicap_to_child
      @handicap_to_child = HandicapToChild.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def handicap_to_child_params
      params.require(:handicap_to_child).permit(:comment, :id_child, :id_handicap)
    end
end

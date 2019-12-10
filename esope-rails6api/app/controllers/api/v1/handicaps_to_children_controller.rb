class Api::V1::HandicapsToChildrenController < ApplicationController
  before_action :set_handicaps_to_child, only: [:show, :update, :destroy]

  # GET /handicaps_to_children
  def index
    @handicaps_to_children = HandicapsToChild.all

    render json: @handicaps_to_children
  end

  # GET /handicaps_to_children/1
  def show
    render json: @handicaps_to_child
  end

  # POST /handicaps_to_children/myHandicaps/1
  def myHandicaps
    @myHand = HandicapsToChild.find_by_sql(["SELECT h.description FROM handicaps_to_Children hc, handicaps h WHERE child_id = ? AND h.id = hc.child_id", params[:id]])
    render json: @myHand
  end

  # POST /handicaps_to_children
  def create
    @handicaps_to_child = HandicapsToChild.new(handicaps_to_child_params)

    if @handicaps_to_child.save
      render json: @handicaps_to_child, status: :created, location: nil
    else
      render json: @handicaps_to_child.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /handicaps_to_children/1
  def update
    if @handicaps_to_child.update(handicaps_to_child_params)
      render json: @handicaps_to_child
    else
      render json: @handicaps_to_child.errors, status: :unprocessable_entity
    end
  end

  # DELETE /handicaps_to_children/1
  def destroy
    @handicaps_to_child.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handicaps_to_child
      @handicaps_to_child = HandicapsToChild.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def handicaps_to_child_params
      params.require(:handicaps_to_child).permit(:comment, :child_id, :handicap_id)
    end
end

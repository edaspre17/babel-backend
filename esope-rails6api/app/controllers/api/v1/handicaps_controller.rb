class Api::V1::HandicapsController < ApplicationController
  before_action :set_handicap, only: [:show, :update, :destroy]

  # GET /handicaps
  def index
    @handicaps = Handicap.all

    render json: @handicaps
  end

  # GET /handicaps/1
  def show
    render json: @handicap
  end

  # POST /handicaps
  def create
    @handicap = Handicap.new(handicap_params)

    if @handicap.save
      render json: @handicap, status: :created, location: @handicap
    else
      render json: @handicap.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /handicaps/1
  def update
    if @handicap.update(handicap_params)
      render json: @handicap
    else
      render json: @handicap.errors, status: :unprocessable_entity
    end
  end

  # DELETE /handicaps/1
  def destroy
    @handicap.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handicap
      @handicap = Handicap.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def handicap_params
      params.require(:handicap).permit(:description, :id_handicap)
    end
end

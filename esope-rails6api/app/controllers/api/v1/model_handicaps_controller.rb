class Api::V1::ModelHandicapsController < ApplicationController
  before_action :set_model_handicap, only: [:show, :update, :destroy]

  # GET /model_handicaps
  def index
    @model_handicaps = ModelHandicap.all

    render json: @model_handicaps
  end

  # GET /model_handicaps/1
  def show
    render json: @model_handicap
  end

  # POST /model_handicaps
  def create
    @model_handicap = ModelHandicap.new(model_handicap_params)

    if @model_handicap.save
      render json: @model_handicap, status: :created, location: @model_handicap
    else
      render json: @model_handicap.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /model_handicaps/1
  def update
    if @model_handicap.update(model_handicap_params)
      render json: @model_handicap
    else
      render json: @model_handicap.errors, status: :unprocessable_entity
    end
  end

  # DELETE /model_handicaps/1
  def destroy
    @model_handicap.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_handicap
      @model_handicap = ModelHandicap.find(params[:id_handicap])
    end

    # Only allow a trusted parameter "white list" through.
    def model_handicap_params
      params.require(:model_handicap).permit(:description, :id_handicap)
    end
end

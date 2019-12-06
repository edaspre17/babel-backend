class MandatesController < ApplicationController
  before_action :set_mandate, only: [:show, :update, :destroy]

  # GET /mandates
  def index
    @mandates = Mandate.all

    render json: @mandates
  end

  # GET /mandates/1
  def show
    render json: @mandate
  end

  # POST /mandates
  def create
    @mandate = Mandate.new(mandate_params)

    if @mandate.save
      render json: @mandate, status: :created, location: @mandate
    else
      render json: @mandate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mandates/1
  def update
    if @mandate.update(mandate_params)
      render json: @mandate
    else
      render json: @mandate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mandates/1
  def destroy
    @mandate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mandate
      @mandate = Mandate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mandate_params
      params.require(:mandate).permit(:instigator, :demand, :id_mandate, :id_child, :insert_date)
    end
end

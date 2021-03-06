class Api::V1::SelectedCategoriesController < ApplicationController
  before_action :set_selected_category, only: [:show, :update, :destroy]

  # GET /selected_categories
  def index
    @selected_categories = SelectedCategory.all

    render json: @selected_categories
  end

  # GET /selected_categories/1
  def show
    render json: @selected_category
  end

  #POST /selected_categories/ChoosenCategories/:id_game_session
  def choosenCategories
    @categories = SelectedCategory.find_by_sql(["SELECT c.* FROM categories c, selected_categories sc 
            WHERE c.id = sc.category_id AND sc.game_session_id = ? ORDER BY sorting", params[:id]])
    render json: @categories
  end

  # POST /selected_categories
  def create
    @selected_category = SelectedCategory.new(selected_category_params)

    if @selected_category.save
      render json: @selected_category, status: :created, location: nil
    else
      render json: @selected_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /selected_categories/1
  def update
    if @selected_category.update(selected_category_params)
      render json: @selected_category
    else
      render json: @selected_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /selected_categories/1
  def destroy
    @selected_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_category
      @selected_category = SelectedCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def selected_category_params
      params.require(:selected_category).permit(:sorting, :status, :category_id, :game_session_id)
    end
end

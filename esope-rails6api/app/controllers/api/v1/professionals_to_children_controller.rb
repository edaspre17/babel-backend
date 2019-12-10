class Api::V1::ProfessionalsToChildrenController < ApplicationController
  before_action :set_professionals_to_child, only: [:show, :update, :destroy]

  # GET /professionals_to_children
  def index
    @professionals_to_children = ProfessionalsToChild.all

    render json: @professionals_to_children
  end

  # GET /professionals_to_children/1
  def show
    render json: @professionals_to_child
  end

  # GET /professionals_to_children/listChildren/1
  #renvoie la liste des enfants d'un professionnel
  def listChildren 
    @pc = ChildrenContact.find_by_sql(["Select * FROM professionals_to_children pc, children c 
    WHERE pc.user_id = ? AND pc.child_id = c.id", params[:id]])
    render json: @pc
  end
  
  # GET /professionals_to_children/lastPro/1
  #renvoie la liste des enfants d'un professionnel
  def lastPro 
    @pc = ChildrenContact.find_by_sql(["Select * FROM users u , professionals_to_children pc
    WHERE u.id = pc.user_id AND pc.child_id = ? AND u.user_level = 1 AND end_care_date IS NULL", params[:id]])
    render json: @pc
  end

  # GET /professionals_to_children/listPro/1
  #renvoie la liste des professionnel qu'a eu un enfant
  def listPro
    @pc = ChildrenContact.find_by_sql(["Select * FROM users u , professionals_to_children pc
    WHERE u.id = pc.user_id AND pc.child_id = ? AND u.user_level = 1", params[:id]])
    render json: @pc
  end


  # POST /professionals_to_children
  def create
    @professionals_to_child = ProfessionalsToChild.new(professionals_to_child_params)

    if @professionals_to_child.save
      render json: @professionals_to_child, status: :created, location: @professionals_to_child
    else
      render json: @professionals_to_child.errors, status: :unprocessable_entity
    end
  end



  # PATCH/PUT /professionals_to_children/1
  def update
    if @professionals_to_child.update(professionals_to_child_params)
      render json: @professionals_to_child
    else
      render json: @professionals_to_child.errors, status: :unprocessable_entity
    end
  end

  # DELETE /professionals_to_children/1
  def destroy
    @professionals_to_child.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professionals_to_child
      @professionals_to_child = ProfessionalsToChild.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def professionals_to_child_params
      params.require(:professionals_to_child).permit(:id_care, :user_id, :child_id, :start_care_date, :en_care_date)
    end
end

class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: nil
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

    # POST /users/login/
    def login
      @user = User.find_by_sql(["SELECT id, name, surname, imagepath, note, phone, email, job, inserts_date, version, user_level FROM users WHERE pwd = ? AND email = ?", user_params['pwd'], user_params['email']])
      render json: @user
    end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :surname, :pwd, :imagepath, :note, :archived, :phone,
       :email, :job, :inserts_date, :id_user) #:version, :child_id, :user_id)
    end
end

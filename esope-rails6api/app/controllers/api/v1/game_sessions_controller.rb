class Api::V1::GameSessionsController < ApplicationController
  before_action :set_game_session, only: [:show, :update, :latest] #do not autorize users to :destroy

  # ##############
  # Auto-genrated
  # ##############

  # GET /game_sessions
  def index
    @game_sessions = GameSession.all

    render json: @game_sessions
  end

  # GET /game_sessions/1
  def show
    render json: @game_session
  end

  # POST /game_sessions
  def create
    @game_session = GameSession.new(game_session_params) #maybe modifier

    if @game_session.save
      render json: @game_session, status: :created, location: @game_session
    else
      render json: @game_session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_sessions/1
  def update
    if @game_session.update(game_session_params)
      render json: @game_session
    else
      render json: @game_session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_sessions/1
  def destroy
    @game_session.destroy
  end

  # ####################
  # Programmer's attempt
  # ####################

  # POST /game_sessions/#latest
  def latest
    @test = 1
    @latest = GameSession.find_by_sql(["SELECT * FROM game_sessions g 
      INNER JOIN mandates m ON m.id_mandate = g.mandate 
      INNER JOIN selected_categories sc ON sc.id_game = g.id_game 
      INNER JOIN selected_pictures sp ON sp.id_game = g.id_game
      WHERE g.id_child = ? AND  g.startdate >= (SELECT MAX(j.startdate) FROM game_sessions j WHERE j.id_child = ?)", params[:id],params[:id]]) # Returns as many tuples as there's pictures in the game session.
      render json: @test
  end


  # ##############
  # Auto-genrated
  # ##############

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_session
      @game_session = GameSession.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_session_params
      params.require(:game_session).permit(:start_date, :guardian_comment, :prof_comment, :step_one, :step_two, :step_three, :finished_state, :version, :id_game, :child_id, :user_id, :mandate_id)
    end
end

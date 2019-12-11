class Api::V1::GameSessionsController < ApplicationController
  before_action :set_game_session, only: [:show, :update]

  # ##############
  # Auto-generated
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
    @game_session = GameSession.new(game_session_params)
     
    if @game_session.save
        render json: @game_session, status: :created, location: nil
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

  # POST /game_sessions/latest/:child_id
  def latest
    @latest = GameSession.find_by_sql(["SELECT g.id as game_id, g.start_date, 
      g.guardian_comment, g.prof_comment,g.step_one, g.step_two, g.step_three, 
      g.finished_state, g.version as game_version, 
      m.id as mandate_id, m.instigator, m.demand, m.insert_date, 
      sc.id as selected_category_id, sc.sorting, sc.status, 
      sp.id as selected_picture_id, sp.note, sp.child_tag, 
      sp.do_like, sp.is_happy, sp.is_autonomous, sp.priority, sp.would_like, 
      sp.step_one_done, sp.step_two_done, sp.step_three_done, 
      sp.version as selected_picture_version, p.path FROM game_sessions g 
      INNER JOIN mandates m ON m.id = g.mandate_id
      INNER JOIN selected_categories sc ON sc.game_session_id = g.id 
      INNER JOIN selected_pictures sp ON sp.game_session_id = g.id
	  INNER JOIN pictures p ON sp.picture_id = p.id
      WHERE g.child_id = ? AND  g.start_date >= (SELECT MAX(j.start_date) 
      FROM game_sessions j WHERE j.child_id = ?)", params[:id],params[:id]]) # Returns as many tuples as there's pictures in the game session.
      render json: @latest
  end

  # POST /game_sessions/getgamesbygate/:child_id
  def getgamesbydate
    @game_sessions = GameSession.find_by_sql(["SELECT g.id as game_id, g.start_date, 
      g.guardian_comment, g.prof_comment,g.step_one, g.step_two, g.step_three, 
      g.finished_state, g.version as game_version, 
      m.id as mandate_id, m.instigator, m.demand, m.insert_date, 
      sc.id as selected_category_id, sc.sorting, sc.status, 
      sp.id as selected_picture_id, sp.note, sp.child_tag, 
      sp.do_like, sp.is_happy, sp.is_autonomous, sp.priority, sp.would_like, 
      sp.step_one_done, sp.step_two_done, sp.step_three_done, 
      sp.version as selected_picture_version, p.path FROM game_sessions g 
      INNER JOIN mandates m ON m.id = g.mandate_id
      INNER JOIN selected_categories sc ON sc.game_session_id = g.id 
      INNER JOIN selected_pictures sp ON sp.game_session_id = g.id
	  INNER JOIN pictures p ON sp.picture_id = p.id
      WHERE g.child_id = ? AND  g.start_date IS NOT NULL
      ORDER BY g.start_date ASC",params[:id]]) # Returns all the games of the kid, ordered by date
    render json: @game_sessions
  end

  #POST /game_sessions/getgameforchild/:child_id
  def getgameforchild
    @gs = GameSession.find_by_sql(["SELECT gs.* FROM game_sessions gs WHERE gs.child_id = ? AND gs.start_date= 
                (SELECT MAX(j.start_date) FROM game_sessions j WHERE gs.child_id = j.child_id)", params[:id]])
    render json: @gs
  end

  # ##############
  # Auto-generated
  # ##############

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_session
      @game_session = GameSession.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_session_params
      params.require(:game_session).permit(:start_date, :guardian_comment, :prof_comment, :step_one, :step_two, :step_three, :finished_state, :version, :child_id, :user_id, :mandate_id, :instigator, :demand, :insert_date)
    end
end

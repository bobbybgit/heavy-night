class PlaySessionsController < ApplicationController
  before_action :set_play_session, only: %i[ show edit update destroy ]

  # GET /play_sessions or /play_sessions.json
  def index
    @play_sessions = PlaySession.all
  end

  # GET /play_sessions/1 or /play_sessions/1.json
  def show
  end

  # GET /play_sessions/new
  def new
    @play_session = PlaySession.new
  end

  # GET /play_sessions/1/edit
  def edit
  end

  # POST /play_sessions or /play_sessions.json
  def create
    @play_session = PlaySession.new(play_session_params)

    respond_to do |format|
      if @play_session.save
        format.html { redirect_to play_session_url(@play_session), notice: "Play session was successfully created." }
        format.json { render :show, status: :created, location: @play_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @play_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /play_sessions/1 or /play_sessions/1.json
  def update
    respond_to do |format|
      if @play_session.update(play_session_params)
        format.html { redirect_to play_session_url(@play_session), notice: "Play session was successfully updated." }
        format.json { render :show, status: :ok, location: @play_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @play_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_sessions/1 or /play_sessions/1.json
  def destroy
    @play_session.destroy

    respond_to do |format|
      format.html { redirect_to play_sessions_url, notice: "Play session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play_session
      @play_session = PlaySession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def play_session_params
      params.require(:play_session).permit(:collection_id, :slot_number, :max_slots, :user_id, :event_id)
    end
end

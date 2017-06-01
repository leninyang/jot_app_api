class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]
  # before_action :authenticate_token
  # before_action :authorize_user
  
  # GET /notes
  def index
    @notes = Note.all

    render json: @notes
  end

  # GET /notes/1
  def show
    render json: @note
  end

  # POST /notes
  def create

    data = {
      title: note_params[:title],
      content: note_params[:content],
      starred: note_params[:starred],
      archived: note_params[:archived],
      user_id: note_params[:user_id]
    }

    #note =Note.new(note_params)
    @note = Note.new(data)

    if @note.save
      render json: { status: 201, note: @note }
    else
      render json: { status: 422, note: @note }
    end
  end

  # PATCH/PUT /notes/1
  def update
    note = Note.find(params[:id])
    if @note.update(note_params)
      render json: { status: 201, note: note }
    else
      render json: { status: 422, note: note }
    end
  end

  # DELETE /notes/1
  def destroy
    @note.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_note
    @note = Note.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def note_params
    params.require(:note).permit(:title, :content, :starred, :archived, :user_id)
  end
end

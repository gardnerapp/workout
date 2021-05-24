class VideosController < ApplicationController
  before_action :set_video, only: %i[ show edit update destroy ]

  # GET /videos or /videos.json
  # todo paginate
  def index
    @videos = Video.all
  end

  # GET /videos/1 or /videos/1.json
  def show
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos or /videos.json
  def create
    @video = Video.new(video_params)

      if @video.save
        flash[:success] = 'Video was successfully created.'
        redirect_to @video
      else
       render :new, status: :unprocessable_entity 
      end
  end

  # PATCH/PUT /videos/1 or /videos/1.json
  def update
      if @video.update(video_params)
        flash[:success] = 'Video was succesfully updated'
        redirect_to @video
      else 
        render :edit, status: :unprocessable_entity 
      end
  end

  # DELETE /videos/1 or /videos/1.json
  def destroy
    # TODO flash confirmation
    @video.destroy
      redirect_to videos_url, notice: 'Video was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_video
    @video = Video.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def video_params
    params.require(:video).permit(%i[title description video])
  end
end

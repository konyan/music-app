class TracksController < ApplicationController

  before_action :set_tracks, only: [:edit,:update, :show, :destroy]

  def index
    @tracks = Track.all
  end

  def show

  end

  def new
    @track = Track.new
    @categories = Category.all
    @artists = Artist.all
  end

  def create
    @track = Track.create(track_params)
    @categories = Category.all
    @artists = Artist.all
    if @track.save
      flash[:success] = "Track was successfully created"
      redirect_to tracks_path
    else
      render :new
    end
  end

  def edit
    @categories = Category.all
    @artists = Artist.all
  end

  def update
    @categories = Category.all
    @artists = Artist.all
    if @track.update(track_params)
      flash[:success] = "Track was successfully updated"
      redirect_to tracks_path
    else
      render :edit
    end
  end

  def destroy

  end

  private

    def track_params
      params.require(:track).permit(:name,:description,:translate_text,:length,:category_id,:artist_id,:track_url)

    end

    def set_tracks
      @track = Track.find(params[:id])
    end
end
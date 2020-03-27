class ArtistsController < ApplicationController

  before_action :set_artist, only: [:edit,:update, :show, :destroy]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    # debugger
    if @artist.save
      flash[:success] = "Artist was successfully created"
      redirect_to artists_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    # debugger
    if @artist.update(artist_params)
      flash[:success] = "Artist was successfully updated"
      redirect_to artists_path
    else
      render :new
    end
  end

  def destroy
    @artist.destroy
    flash[:danger] = "Artist was successfully deleted"
    redirect_to artists_path
  end

  private

    def artist_params
      params.require(:artist).permit(:name,:born_city,:youth_name,:bio,:dob,:photo_url)

    end

    def set_artist
      @artist = Artist.find(params[:id])
    end
end
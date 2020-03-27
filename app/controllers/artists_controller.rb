class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

    def artist_params

    end

    def set_artist

    end
end
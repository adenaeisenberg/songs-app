class SongsController < ApplicationController
  def index
    @songs = Song.all
    render :index
  end

  def create
    @song = Song.create(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    render :show
  end

  def show
    @song = Song.find_by
  end
end

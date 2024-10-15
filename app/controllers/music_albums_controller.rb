class MusicAlbumsController < ApplicationController
  before_action :set_music_album, only: %i[ show update destroy ]

  # GET /music_albums
  def index
    @music_albums = MusicAlbum.all

    render json: @music_albums
  end

  # GET /music_albums/1
  def show
    render json: @music_album
  end

  # POST /music_albums
  def create
    @music_album = MusicAlbum.new(music_album_params)

    if @music_album.save
      render json: @music_album, status: :created, location: @music_album
    else
      render json: @music_album.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /music_albums/1
  def update
    if @music_album.update(music_album_params)
      render json: @music_album
    else
      render json: @music_album.errors, status: :unprocessable_entity
    end
  end

  # DELETE /music_albums/1
  def destroy
    @music_album.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music_album
      @music_album = MusicAlbum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def music_album_params
      params.require(:music_album).permit(:name, :band, :genre, :year)
    end
end

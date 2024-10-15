class AddYearToMusicAlbum < ActiveRecord::Migration[7.0]
  def change
    add_column :music_albums, :year, :integer
  end
end

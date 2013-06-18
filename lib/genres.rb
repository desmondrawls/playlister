#specs

class Genre
  All = []

  def Genre.all
    All
  end

  attr_accessor :name, :artists, :songs

  def initialize
    All << self
    Song.reset_songs
    Artist.reset_artists
  end

  def Genre.reset_genres
    All.clear
  end

  def artists
    @artists = []
    @artists << Artist.all.select{|artist| artist.genres.include?(@name) && !@artists.include?(artist)}
    @artists.flatten
  end

  def songs
    @songs = []
    @songs << Song.all.select{|song| song.genre == @name}
    @songs.flatten
    
  end

end






##each genre has songs and UNIQUE artists that are added through song and artist classes
##but are accessible through genre




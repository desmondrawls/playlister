#specs

  #will need empty array of songs per artist
class Artist
  attr_accessor :name, :songs, :genres
  All = []

  def initialize
    All << self
    @songs = []
  end

  def Artist.count
    All.count
  end

  def Artist.all
    All
  end

  def Artist.reset_artists
    All.clear
  end

  def songs_count
    @songs.count
  end


  def add_song(song)
    @songs << song
  end

  def genres
    @genres = []
    #@songs.each get genre push into array of genres
    @songs.each do |song|
      @genres.include?(song.genre) ||
        @genres << song.genre
    end
    @genres
  end
end






  # def initialize
  #   @songs = []
  #   @genres = []
  # end

  # def name
  #   artists << @name
  # end

#   def add_song(song)
#     @songs << song
#     @genres << song.genre
#     Genre.all << @name

#     Genre.all[:artists] << @name
#     #artist to the genre class
#     #getting access to pop through Genre
#   end 

#   def reset_artists
#     artists.empty
#   end

# end

#initialize Artist.new

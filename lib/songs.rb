#specs

#song.genre ##key attribute with auto update of genre class

class Song
  attr_accessor :name, :genre
  All = []

  def Song.all
    All
  end

  def Song.reset_songs
    All.clear
  end

  def initialize
    All << self
  end

  def genre=(genre)
    @genre = genre.name
    # fucker = Song.all.select{|song| song == self}.genre
  end










  # def initialize(name = nil)
  #   @name = name
  # end

  # def genre=(genre_type)
  #   @genre = genre_type
  #   if !Genre.all.include?(genre_type)
  #     genre = Genre.new
  #     genre.name = genre_type
  #     genre.songs << @name
  #     Genre.all << genre
  #   else
  #     Genre.all[:genre_type][:songs] << @name
  # end

end



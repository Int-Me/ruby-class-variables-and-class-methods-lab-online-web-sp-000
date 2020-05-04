class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
  end
  def count
    @@count
  end
  def artists
    @@artists
  end
  def genres
    @@genres
  end
  def genre_count
    genre_list = {}
    @@genres.each do |genre|
      if genre_list.include?(genre)
        genre_list[genre] += 1
      else
        genre_list[genre] = 1
      end
    end
  end


end

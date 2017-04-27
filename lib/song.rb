class Song
  attr_accessor :name, :artist, :genre

  @@all_songs = []
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = 0
  @@artist_count = 0


  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all_songs << self
    @@artists << artist
    @@genres << genre
    @@count += 1
  end 

  def self.all
    @@all_songs
  end
  
  def self.count 
    @@count
  end

  def self.genres
    @@genres.uniq
  end 

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    total = {}
    @@genres.each do |x|
      if total[x] 
        total[x] += 1
      else 
        total[x] = 1
      end 
    end
    return total
  end

  def self.artist_count
    total = {}
    @@artists.each do |x|
      if total[x]
        total[x] += 1
      else 
        total[x] = 1
      end 
    end
    return total
  end

end 
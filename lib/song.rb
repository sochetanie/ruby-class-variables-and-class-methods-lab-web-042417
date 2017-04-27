class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
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
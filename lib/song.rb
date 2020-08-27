class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
     @name = name
     @artist = artist
     @@artists << artist
     @genre = genre
     @@genres << genre
     @@count += 1
    end

    def self.genres
     @@genres.uniq!
    end

    def self.artists
     @@artists.uniq!
    end
    
    def self.genre_count
     total_genre = {}
      @@genres.each {|genre| total_genre[genre] = (total_genre[genre] || 0) +1}
      total_genre
    end
    
    def self.artist_count
     total_artist = {}
     @@artists.each {|artist| total_artist[artist] = (total_artist[artist] || 0) +1}
     total_artist
    end

    def self.count 
      @@count
    end

  
end
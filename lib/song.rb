require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  #
  # def self.genre_count
  #   @@genre_count = 0
  #
  #   @@genres.each do |genre|
  #   @@genres.include?(genre)
  #       genre_count += 1
  #     end
  #
  #     end
  #
  #   @@genres_list_with_count[genre => genre_count]
  #
  #   end
  #




  def self.artist_count
    @@artist_list_with_count = {}
    @@artist_sum = 0

    @@artists.each do |artist|
      if @@artists.include?(artist)
        @@artist_list_with_count[artist] = (@@artist_sum +=1)
      end

      end

    return @@artist_list_with_count

  end

  # [Brittany, jayz, jayz]
  #
  # {Brittany Spears"=>1, "Jay-Z"=>2}}
end

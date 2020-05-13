require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {} #{"Beyonce" => 17, "Jay-Z" => 40}
  @@genre_count = {} #{"rap" => 5, "rock" => 1, "country" => 3}
  attr_accessor :artist, :name, :genre

  def initialize(name, artist, genre)
    #instance variables start
    @name = name
    @artist = artist
    @genre = genre

    #class variables that are modified on initialize
    @@count += 1

    #artist goes into @@artist array. Duplicates are allowed
    @@artists << artist
    #An artist key is made in @@artist_count hash. .Select returns an array of all the elements equal to artist.
    #The .length retrieves the length of the given array and sets it equal to the key value of the newly created key.
    #@@artist_count hash recieves key/value pair and is updated on every initialize
    @@artist_count[artist] = @@artists.select { |value| value == artist}.length



    @@genres << genre
    @@genre_count[genre] = @@genres.select { |value|  value == genre}.length
    # @@genre_count[genre] = @@genres.length

 end #end of initialize

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

    def self.genres
    @@genres.uniq
  end

  def self.artist_count
    @@artist_count
  end

  def self.genre_count

    @@genre_count
  end


end
#-----------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------
# class Song
#   @@count = 0
#   @@artists = []
#   @@genres = []
#   @@artist_count = {} #{"Beyonce" => 17, "Jay-Z" => 40}
#   @@genre_count = {} #{"rap" => 5, "rock" => 1, "country" => 3}
#
#   #attr_accessor work only for INSTANCE variables
#   attr_accessor :artist, :name, :genre
#   # attr_reader :count, :artist, :genres:, :artist_count, :genres_count
#
#   def initialize(name, artist, genre)
#
#     @@count += 1
#
#     @name = name
#     @artist = artist
#     @genre = genre
#     # unless @@artists.include?(artist)
#       @@artists << artist
#       @@artist_count[artist] = @@artists.select { |value| value == artist}.length
#     # end
#     # unless @@genres.include?(genre)
#       @@genres << genre
#       @@genre_count[genre] = @@genres.select { |value| return value if value == genre end}.length
#   #  end
#     #initialize @@artist_count and @@genres_count below
#
#
#       # select_array = []
#       # select_array << value
#
#     @@genre_count[genre] = @@genres.length
#   end
#
#   def self.count
#     @@count
#   end
#
#   def self.artists
#     @@artists.uniq
#   end
#
#   def self.genres
#     @@genres.uniq
#   end
#   def self.genre_count
#     @@genre_count
#   end
#
#   # def self.genre_count
#   #   #return all duplicate genre names from @@genre array
#   #   #@@genres.select { |value| value == artist}
#   #   #.count will count how many element fit the passed in argument
#   #   new =[]
#   #   ["Rap", "Rap", "Rap", "Indie", "Punk", "Rap"].inject do |base, comparison|
#   #     if base == comparison
#   #     new << comparison
#   #     end
#   #   end
#   #   ["Rap", "Rap", "Rap", "Indie", "Punk", "Rap"].count("Rap")
#   #   #How to find a good argument for .count? Iteration?
#   #   @@genre.count(  )
#   #   @@genre_count
#   # end
#
#   def self.artist_count
#     @@artist_count
#   end
# end
# ["Rap", "Rap", "Rap", "Indie", "Punk", "Rap"]
# # a1 = Song.new("Both", "Drake", "Rap")
# # a2 = Song.new("Glyachester", "Drake", "Rap")
# # a3 = Song.new("Started From The Bottom", "Drake", "Rap")
# # b = Song.new("Let It Happen","Tame Impala",  "Indie")
# # c = Song.new( "What's My Age Again?","Blink 182", "Punk")
# # d = Song.new( "Niggas In Paris","Jay-Z", "Rap")
# #
# #   class Dog
# #   attr_accessor :name :breed
# #
# #   def initialize(name, breed)
# #     @name = name
# #     @breed = breed
# #   end
# #   end
# #
# #
# #
# #
# #
# #
# #
# # end

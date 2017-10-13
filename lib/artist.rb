require 'pry'

class Artist
  extend Memorable::ClassMethods #extend class methods, nested in ::ClassMethods module
  extend Findable::ClassMethods
  include Memorable::InstanceMethods #include instance methods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@all = [] #change to @@all, change references

  def initialize
  #  @@artists << self
    super #adding super lets us pull attr from both mdule and original method
    @songs = []
  end

  #def self.find_by_name(name) #findable .find
  #  @@artists.detect{|a| a.name == name}
  #end


  def self.all
    @@all #changed to @@all, now works
  end

  #def self.reset_all #memorable .reset_all
  #  self.all.clear
  #end

  #def self.count #memorable .count
  #  @@artists.count
  #end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  #def to_param #paramable #to_param
  #  name.downcase.gsub(' ', '-')
  #end

end

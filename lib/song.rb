require 'pry'

class Song
  extend Memorable::ClassMethods #extend class methods, nested in ::ClassMethods module
  extend Findable::ClassMethods
  include Memorable::InstanceMethods #include instance methods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@all = []

  #def initialize  #memorable #initialize
  #  @@songs << self
  #end

  #def self.find_by_name(name) #findable .find
  #  @@songs.detect{|a| a.name == name}
  #end

  def artist=(artist)
    @artist = artist
  end

  #def self.reset_all #memorable .reset_all
  #  @@songs.clear
  #end

  #

  #def self.count #memorable .count
  #  self.all.count
  #end

  def self.all
    @@all
  end
end

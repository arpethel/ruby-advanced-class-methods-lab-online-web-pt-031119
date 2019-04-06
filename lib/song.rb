require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  # Use this constructor instead of #initialize. Constructors extend #initialize functionality
  def self.create
    # binding.pry
    @song = self.new
    @song.save
    @song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name
  end

  def self.find_by_name
  end

  def self.find_or_create_by_name
  end

  def self.alphabetical
  end

  def self.new_from_filename
  end

  def self.create_from_filename
  end

  def self.destroy_all
    @@all.clear
  end

end

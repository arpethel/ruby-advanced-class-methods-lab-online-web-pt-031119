require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  # Use this constructor instead of #initialize. Constructors extend #initialize functionality
  def self.create
    @song = self.new
    @song.save
    @song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.new_by_name(name)
    @song.name
    # binding.pry
    # song = @song
    # @name = name
    # binding.pry
    # song.name = name
    # song.name
  end


end

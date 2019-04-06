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

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    # binding.pry
    @@all.find(@song.name)
    song if @@all.include?(name)
    #   false
    # end

    # @@all.each do |song|
    #   if song.name == name
    #     return song
    #   end
    # end
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    @@all.sort_by { |song| song.name }
  end

  def self.new_from_filename(filename)
    row = filename

    data = row.split(" - ")
    artist_name = data[0]
    song.name = data[1].gsub(".mp3", "")

    song = self.new
    song.name = song_name
    song.artist_name = artist_name
    song
  end

  def self.create_from_filename(filename)
    song = self.new_from_filename(filename)
    song.save
    song
  end

  def self.destroy_all
    @@all.clear
  end

end

require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

def self.create 
  song = self.new
  @@all << song
  song
end

def self.new_by_name (song_name)
  new_song = self.new
  new_song.name = song_name
  new_song
end 

def self.create_by_name(song_name)
  new_song = self.new 
  new_song.name = song_name
  new_song.save
  new_song
end

def self.find_by_name(name)
  @@all.find{ |song_name| song_name.name==name}
end

def self.find_or_create_by_name(name)
  if self.find_by_name(name) == nil 
    self.create_by_name(name)
  else self.find_by_name(name)
  end 
end 

def self.alphabetical
  @@all.sort_by{|thing| thing.name}
end

def self.new_from_filename (input)
  
end


def destroy_all
  self.all.clear
end 
end

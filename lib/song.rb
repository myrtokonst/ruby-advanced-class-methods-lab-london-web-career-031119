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
  if self.name.include?(name)
    song_1 =self.find_by_name(name)
    song_1
  else self.create_by_name(name)
  end 
end 



end

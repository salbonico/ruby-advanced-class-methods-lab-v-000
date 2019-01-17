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
  song.save
  return song
end

def self.new_by_name(name)
  song = self.new
  song.name = name
  song.save
  return song
end

def self.create_by_name(name)
  song = self.new
  song.name = name
  song.save
  return song
end

def self.find_by_name(name)
  self.all.each do |object|
    if object.name == name
      return object
    end
end
return false
end

def self.find_or_create_by_name(name)
  if self.find_by_name(name) == false
    self.create_by_name(name)
  else
    self.find_by_name(name)
  end
end


end

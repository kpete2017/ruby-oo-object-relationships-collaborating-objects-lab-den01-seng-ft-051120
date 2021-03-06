class Artist
    attr_accessor :name
    @@all = []
  
    def initialize name
      @name = name
      @songs = []
      @@all << self
    end
  
    def add_song song
      @songs << song 
    end

    def songs
        @songs
    end
  
    def self.all
      @@all
    end
  
    def self.find_or_create_by_name name
      if self.find name
        self.find name
      else
        artist = Artist.new name
      end
    end
  
    def self.find name
      self.all.detect { |artist| artist.name == name }
    end
  
  
    def print_songs
      self.songs.each {|song| puts song.name}
    end
  end
  
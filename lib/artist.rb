# BIG BOY

class Artist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        songs = Song.all.select do |song|
            song.artist == self
        end
        songs
    end

    def new_song(name, genre)
        Song.new(name, artist = self, genre)
    end

    def genres
       genres = self.songs.map do |song|
            song.genre
       end
       genres
    end

end
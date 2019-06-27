class Showing
    attr_reader :theater, :movie, :hour
    @@all = []

    def initialize(theater, movie, hour)
        @theater = theater
        @movie = movie
        @hour = hour
        
        @@all << self
    end

    def self.all
        @@all
    end
end
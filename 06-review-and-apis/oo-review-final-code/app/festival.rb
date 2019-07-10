class Festival

    attr_accessor :title, :location

    @@all = []
    
    def initialize(title, location)
        @title = title
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def screenings
        Screening.all.select do |screening|
            screening.festival == self
        end
    end

    # lists all the films that have ever been 
    # screened in that festival

    def films
        self.screenings.map do |screening|
            screening.festival.title
        end
    end

end
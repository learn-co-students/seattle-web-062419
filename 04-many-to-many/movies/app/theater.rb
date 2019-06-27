class Theater
    attr_reader :name, :screens
    @@all = []

    def initialize(name, screens)
        @name = name
        @screens = screens

        @@all << self
    end

    def self.all
        @@all
    end

    # returns an array of all showings at this theater
    def showings
        Showing.all.select do |showing|
            showing.theater == self
        end
    end

    # returns an array of movie instances showing
    # at this theater
    def movies
        # .each - visit everything once
        # .select - select only some whole things
        # .filter - synonym for select
        # .reject - opposite of select/filter
        # .map - 1:1 transformation of array
        #        turns each one thing into something
        # given: [1, 2, 3].map {|n| n*n} 
        #   get: [1, 4, 9]
        self.showings.map do |showing|
            showing.movie
        end.uniq
    end

    # get showtimes for a given movie showing
    # at this theater
    def showtimes(movie)
        self.showings.select do |showing|
            showing.movie == movie
        end
    end
end
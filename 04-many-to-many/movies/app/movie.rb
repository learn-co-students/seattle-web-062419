class Movie
    attr_accessor :title, :rating, :year

    @@all = []

    def initialize(title, rating, year)
        @title = title
        @rating = rating
        @year = year

        @@all << self
    end

    def self.all
        @@all
    end

    def showings
        Showing.all.select do |showing|
            showing.movie == self
        end
    end

    # select, iterator -ish sort of method
    def theaters
        results = showings.map do |showing|
            showing.theater
        end
        results.uniq
    end

    # aggregate method. doing more with
    # selected info
    # return the movie that has the most showtimes
    def self.most_shown_movie
        # key/value pairs of key=movie, value=number of times shown
        tally = Hash.new

        # a reference to a Movie instance that has appeared the most
        # most is NOT a number. We use most as a key to read the
        # actual number from the tally with tally[most]
        most = nil

        Showing.all.each do |showing|
            # check to see if showing
            # is being tallied yet
            if tally[showing.movie] == nil
                tally[showing.movie] = 1
            else
                tally[showing.movie] += 1                
            end

            # keep track of whatever movie has the most
            # tallied up so far
            if most == nil
                most = showing.movie
            elsif tally[showing.movie] > tally[most]
                most = showing.movie
            end
        end

        # return the movie that had the most tallies
        most
    end
end
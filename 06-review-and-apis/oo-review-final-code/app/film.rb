class Film

    attr_reader :setting
    attr_accessor :name

    @@all = []

    def initialize(name, setting)
        @name = name
        @setting = setting
        @@all << self
    end

    #Class method
    def self.all_introductions
        self.all.each do |film|
            puts "Welcome, this is #{film.name}, set in #{film.setting}."
        end
    end

    # Screening is the class the joins the classes
    # It is our single source of truth
    # Festival and Film should only know about each other via Screening
    def screenings
        Screening.all.select do |screening|
            screening.film == self
        end
    end

    # Use screenings as a helper method to reduce lines of code.
    # The above method returns all the filtered screenings
    # Do we need self in order to call the screenings method?
    def festivals
        screenings.map do |screening|
            screening.festival.name
        end
    end

    def self.most_festivals
        hash = {}
        self.all.each do |film|
            hash[film] = film.festivals.count
        end
        sorted = hash.sort_by { |festival,count| count }
        sorted.last[0]
    end

    def screen_at_festival(festival,date)
        screening = Screening.new(date,self,festival)
    end

    # Class methods
    def self.all
        @@all
    end
    
end
class Screening

    attr_reader :film, :festival, :date

    @@all = []

    def initialize(date, film, festival)
        @date = date
        @film = film
        @festival = festival
        @@all << self
    end

    def hometown_setting
        if self.festival.location == self.film.setting
            true
        else
            false
        end
    end

    def self.sorted_screenings
        self.all.sort_by { |screening| screening.date }
    end

    def self.all
        @@all
    end

end
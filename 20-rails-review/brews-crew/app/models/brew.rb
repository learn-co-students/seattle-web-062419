class Brew < ApplicationRecord
    has_many :purchases
    validates :blend_name, uniqueness: :true
    
    def self.strongest
        strongest_strength = Brew.first.strength
        Brew.all.each do |brew|
            if brew.strength > strongest_strength
                strongest_strength = brew.strength
            end
        end
        Brew.all.select do |brew|
             brew.strength == strongest_strength
        end
    end
end

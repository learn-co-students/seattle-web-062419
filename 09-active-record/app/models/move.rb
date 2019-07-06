class Move < ActiveRecord::Base
    has_many :pokemon_moves
    has_many :pokemons, through: :pokemon_moves
end
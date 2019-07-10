class Pokemon < ActiveRecord::Base
    # def pokemon_moves
    #     # PokemonMove.all.select { |move| move.pokemon_id == self.id }
    #     # PokemonMove.where(pokemon_id: self.id)
    # end

    has_many :pokemon_moves
    has_many :moves, through: :pokemon_moves

    def delete(id)
        pokemon = Pokemon.all.find(id)
        pokemon.destroy
    end
    
end
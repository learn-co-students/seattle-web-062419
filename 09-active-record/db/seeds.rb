Pokemon.destroy_all
Move.destroy_all
PokemonMove.destroy_all

pikachu = Pokemon.create(name: "Pikachu")
sqrt = Pokemon.create(name: "Squirtle")
ditto = Pokemon.create(name: "Ditto")
wingull = Pokemon.create(name: "Wingull")

fire = Move.create(power: "Fiyah", description: "Can burn things")
dup = Move.create(power: "Duplicate", description: "Can take others' powers into own deck of power.")
freeze = Move.create(power: "Freeze", description: "Freeze the whole city")

move1 = PokemonMove.create(pokemon_id: 4, move_id: 1)
move2 = PokemonMove.create(pokemon_id: 1, move_id: 2)
move3 = PokemonMove.create(pokemon_id: 1, move_id: 1)
move4 = PokemonMove.create(pokemon_id: 2, move_id: 3)

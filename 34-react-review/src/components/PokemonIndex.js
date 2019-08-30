import React from 'react'
import PokemonCollection from './PokemonCollection'
import PokemonForm from './PokemonForm'
import { Search } from 'semantic-ui-react'
import _ from 'lodash'

class PokemonPage extends React.Component {
  constructor(){
    super()
    this.state = {
      pokemon: [],
      searchPokemon: []
    }
    this.getPokemons()
  }

  getPokemons = () => {
    fetch("http://localhost:3000/pokemon")
    .then(resp => resp.json())
    .then(json => {
      this.setState({
        pokemon: json,
        searchPokemon: json
      })
    })
  }

  addPokemon = (pokemon) => {
    this.setState({
      searchPokemon: [...this.state.pokemon, pokemon]
    })
  }

  handleSearchChange = (e, {value}) => {
    const newPokemon = this.state.pokemon.filter(mon => {
      return mon.name.includes(value)
    })
    this.setState({
      searchPokemon: newPokemon
    })
  }

  render() {
    return (
      <div>
        <h1>Pokemon Searcher</h1>
        <br />
        <Search onSearchChange={_.debounce((e, {value}) => this.handleSearchChange(e, {value}), 500)} showNoResults={false} />
        <br />
        <PokemonCollection pokemon={this.state.searchPokemon}/>
        <br />
        <PokemonForm addPokemon={(pokemon) => this.addPokemon(pokemon)}/>
      </div>
    )
  }
}

export default PokemonPage

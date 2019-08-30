import React from 'react'
import { Form } from 'semantic-ui-react'

class PokemonForm extends React.Component {
  constructor() {
    super()
    this.state = {
      name: '',
      hp: '',
      frontUrl: '',
      backUrl: ''
    }
  }

  handleChange = (e) => {
    this.setState({
      [e.target.name]: e.target.value
    })
  }

  handleSubmit = (e) => {
    let pokemonHash = {
      name: this.state.name,
      sprites: {
        front: this.state.frontUrl,
        back: this.state.backUrl
      },
      stats: [
        "",
        "",
        "",
        "",
        "",
        {value: this.state.hp}
      ]
    }
    this.props.addPokemon(pokemonHash)
    e.preventDefault()
    fetch('http://localhost:3000/pokemon',{
    headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json'
    },
    method: 'POST',
    body: JSON.stringify(pokemonHash)
    })
  }

  render() {
    return (
      <div>
        <h3>Add a Pokemon!</h3>
        <Form onSubmit={this.handleSubmit}>
          <Form.Group widths="equal">
            <Form.Input onChange={this.handleChange} fluid label="Name" placeholder="Name" name="name" />
            <Form.Input onChange={this.handleChange} fluid label="hp" placeholder="hp" name="hp" />
            <Form.Input onChange={this.handleChange} fluid label="Front Image URL" placeholder="url" name="frontUrl" />
            <Form.Input onChange={this.handleChange} fluid label="Back Image URL" placeholder="url" name="backUrl" />
          </Form.Group>
          <Form.Button>Submit</Form.Button>
        </Form>
      </div>
    )
  }
}

export default PokemonForm

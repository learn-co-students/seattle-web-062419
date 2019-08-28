import React from "react";

import Filters from "./Filters";
import PetBrowser from "./PetBrowser";

class App extends React.Component {
  constructor() {
    super();

    this.state = {
      pets: [],
      filters: {
        type: "all"
      }
    };
  }

  updateFilterType = newType => {
    //newType must be a string
    this.setState({
      filters: { type: newType }
    });
  };

  getPets = () => {
    if (this.state.filters.type === "all") {
      fetch("/api/pets")
        .then(resp => resp.json())
        .then(data =>
          this.setState({
            pets: data
          })
        );
    } else {
      fetch(`/api/pets?type=${this.state.filters.type}`)
        .then(resp => resp.json())
        .then(data =>
          this.setState({
            pets: data
          })
        );
    }
  };

  adoptPet = id => {
    this.setState(prevState => {
      let newPets = prevState.pets;
      newPets.forEach(pet => {
        if (pet.id === id) {
          pet.isAdopted = true;
        }
      });
      console.log(newPets);
      return { pets: newPets };
    });
  };

  render() {
    return (
      <div className="ui container">
        <header>
          <h1 className="ui dividing header">React Animal Shelter</h1>
        </header>
        <div className="ui container">
          <div className="ui grid">
            <div className="four wide column">
              <Filters
                onChangeType={this.updateFilterType}
                onFindPetsClick={this.getPets}
              />
            </div>
            <div className="twelve wide column">
              <PetBrowser onAdoptPet={this.adoptPet} pets={this.state.pets} />
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default App;

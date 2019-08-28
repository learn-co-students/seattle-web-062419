import React, { Component } from "react";
import Person from "./components/Person";
import NameForm from './components/NameForm'

class App extends Component {
  state = {
    test: "I am test data",
    names: ["Lucy", "Sean", "Stephanie", "Kelliann"]
  };

  renderNames = () => {
    return this.state.names.map(name => {
      return <Person name={name} key={Math.random()} />;
    });
  }

  addName = newName => {
    this.setState(prevState => {
      return {names: [...prevState.names, newName]}
    })
  }

  render() {
    return (
      <div>
        <h1 id="welcome" className="hello">
          Hello from the App Component
        </h1>
        {/* <button onClick={this.handleClickClearNames}>Clear Names</button> */}
        <NameForm placeholder="App placeholder" onAddName={this.addName} />
        <NameForm placeholder="Other placeholder" onAddName={this.addName} />
        {this.renderNames()}
      </div>
    );
  }
}

export default App;

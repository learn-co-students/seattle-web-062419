import React, { Component } from "react";
import Person from "./components/Person";

class App extends Component {
  state = {
    names: ["Lucy", "Sean", "Stephanie", "Kelliann"]
  };

  renderNames = () => {
    return this.state.names.map(name => {
      return <Person name={name} key={Math.random()} />;
    });
  }

  render() {
    return (
      <div>
        <h1 id="welcome" className="hello">Hello from the App Component</h1>
        {this.renderNames()}
      </div>
    );
  }
}

export default App;

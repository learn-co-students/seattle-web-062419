import React from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";
import "./assets/css/minty.css";
import "./App.css";
import GlassesBrowser from "./components/GlassesBrowser";
import Manager from "./components/Manager";
import NavBar from "./components/NavBar";
import Details from "./components/Details";
import GLASSES from "./data";

class App extends React.Component {
  state = {
    glasses: []
  };
  componentDidMount() {
    this.setState({ glasses: GLASSES });
  }
  render() {
    return (
      <div className="App">
        <Router>
          <NavBar />
          <Route
            path="/shop/:id"
            render={(props) => (
              <Details {...props} glasses={this.state.glasses} />
            )}
          />
          <Route path="/manager" component={Manager} />
          <Route
            path="/shop"
            exact
            render={() => <GlassesBrowser glasses={this.state.glasses} />}
          />
        </Router>
      </div>
    );
  }
}

export default App;

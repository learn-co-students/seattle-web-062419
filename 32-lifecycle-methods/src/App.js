import React from 'react';
// import logo from './logo.svg';
import './App.css';
import Counter from './components/Counter'
import Picture from './components/Picture'

// ### What should I know
// - *constructor(props)*
// - *render()*
// - *componentDidMount()*
// - *componentDidUpdate()*
// - *componentWillUnmount()*

class App extends React.Component {

  state = {
    showCounter: false,
    name: ""
  }


  render() {

  console.log("hello from App render()")
  return (
    <div className="App">
      <header className="App-header">
        {this.state.showCounter == true?<div><Counter name={this.state.name}/></div>:null}
        <button onClick={() => {this.setState(prev => { return {name: prev.name+".",showCounter: !prev.showCounter}})}}>
          Edit <code>src/App.js</code> and save to reload.
        </button>
        <button onClick={() => {this.setState(prev => {return {name: prev.name+"@"}})}}>Update Name</button>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
        <Picture />
      </header>
    </div>
  );
  }
}

export default App;

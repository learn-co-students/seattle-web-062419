import React, { Component } from "react";
import "./App.css";
import Buffet from "./components/Buffet";
import Plate from "./components/Plate";
import FOOD_ITEMS from './FOOD.js'

class App extends Component {
  state = {
    buffetFood: FOOD_ITEMS.food, //this resolves to an array of objects with "name" and "image" props
    plateFood: [],
    counter: 0
  }

  // componentDidMount() {
  //   this.setState(() => {
  //     return {buffetFood: FOOD_ITEMS.food.map((food, index) => {
  //       return {  ...food, id: index+1} 
  //     })}
  //   })
  // }

  addFoodToPlate = foodObject => {
    this.setState({counter: this.state.counter+1, plateFood: [...this.state.plateFood, {...foodObject, id:this.state.counter+1}]})
  }

  deleteFromPlate = foodObject => {
    const newPlateFood = this.state.plateFood.filter(food => food.id !== foodObject.id);
    this.setState({plateFood: newPlateFood})
  }

  render() {
    return (
      <div className="App">
      <h3>Welcome to John's All-You-Can-Eat Buffet</h3>
        <Buffet addFoodToPlate={this.addFoodToPlate} {...this.state}/>
        <Plate deleteFoodFromPlate={this.deleteFromPlate} plateFood={this.state.plateFood}/>
      </div>
    );
  }
}

export default App;

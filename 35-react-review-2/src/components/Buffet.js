import React, { Component } from "react";
import Food from "./Food";

class Buffet extends Component {
  //this.props.addFoodToPlate = function prop from App

  displayBuffet = () => {
    return this.props.buffetFood.map((food, index) => {
      return <Food onUserClickOnFood={this.props.addFoodToPlate} key={index} food={food} />;
    });
  };

  render() {
    return (
      <div className="container">
        <h4>BUFFET CONTENTS</h4>
        <div className="row">{this.displayBuffet()}</div>
      </div>
    );
  }
}

export default Buffet;

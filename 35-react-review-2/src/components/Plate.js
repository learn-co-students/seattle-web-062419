import React, { Component } from "react";
import Food from "./Food";

class Plate extends Component {
  displayPlate = () => {
    return this.props.plateFood.map((food, index) => {
      return (
        <Food
          onUserClickOnFood={this.props.deleteFoodFromPlate}
          key={index}
          food={food}
        />
      );
    });
  };
  render() {
    return (
      <div className="jumbotron">
        <h4>PLATE CONTENTS</h4>
        <div className="row">{this.displayPlate()}</div>
      </div>
    );
  }
}

export default Plate;

import React, { Component } from "react";

class Buffet extends Component {
  handleUserClickOnFood = () => {
    this.props.onUserClickOnFood(this.props.food)
  };

  render() {
    const { name, image } = this.props.food;
    return (
      <div className="col col-md-2">
        <div className="card">
          {/* IMAGE BELOW */}
          <img onClick={this.handleUserClickOnFood} className="card-img-top" src={image} />
          <div className="card-body">
            <p>{name}</p>
          </div>
        </div>
      </div>
    );
  }
}

export default Buffet;

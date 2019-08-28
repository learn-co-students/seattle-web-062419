import React, { Component } from "react";

class NameForm extends Component {

  constructor(props) {
    super();
    this.state = {
      newName: "",
      placeholder: props.placeholder
    };
  }

  handleFormSubmit = e => {
    e.preventDefault();
    this.props.onAddName(this.state.newName);
    this.setState({ newName: "" });
  };

  handleInputChange = e => {
    this.setState({
      newName: e.target.value
    });
  };

  render() {
    return (
      <form onSubmit={this.handleFormSubmit}>
        <label>New Name:</label>
        <input
          type="text"
          value={this.state.newName}
          placeholder={this.state.placeholder}
          onChange={this.handleInputChange}
        />
        <button type="submit">Add Name</button>
      </form>
    );
  }
}

export default NameForm;

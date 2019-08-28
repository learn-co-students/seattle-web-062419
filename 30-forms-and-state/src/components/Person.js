import React, { Component } from 'react'

class Person extends Component {
    render() {
        console.log(this.props.name)
        return <h3>I am {this.props.name}</h3>
    }
}

export default Person
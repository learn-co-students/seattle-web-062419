import React from 'react'

class Counter extends React.Component {

    constructor() {
        super();
        this.state = {
            time: 0
        }
        console.log("Counter Constructed")
    }


    componentWillMount() {
        console.log("Component will mount")
        setInterval(() => {
            this.setState(prevState => {
                return {time: prevState.time + 1}
            })
        }, 1000)
    }

    componentWillReceiveProps(props) {
        console.log(props)
    }

    componentWillUpdate() {
        console.log("%ccounter is about to update", "color:green;")
    }

    componentDidMount() {
        console.log("component DID mount")
    }

    componentWillUnmount() {
        console.log("Goodbye from UNMOUNT")
    }


    render() {
        console.log("hello from render()")
        return <h3>{this.state.time} seconds have passed{`${this.props.name}`}</h3>
    }



}

export default Counter 
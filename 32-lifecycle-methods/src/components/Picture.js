import React, { PureComponent } from 'react'
import Counter from './Counter'

class Picture extends PureComponent {
    
    render() {
        console.log("hello from Picture render()")
        return <>
                <Counter />
                <img src="https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" />
            </>
    }
}

export default Picture
import React from 'react';
import Bowies from './Bowies';
import babyBowie from '../assets/babyBowie.jpeg';
import hipsterBowie from '../assets/hipsterBowie.jpg';
import ziggieBowie from '../assets/ziggyBowie.jpg';
import goblinBowie from '../assets/goblinBowie.jpg';

class MainContainer extends React.Component {


  
    
    render(){
        return(
            <div>
                <Bowies 
                    increaseVote={this.increaseVote}
                    decreaseVote={this.decreaseVote}
                />
                <h1>THANKS FOR VOTING</h1>
            </div>
        )
    }
}

export default MainContainer;
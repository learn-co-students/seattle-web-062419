import React from "react";
import {Link} from 'react-router-dom'

class Glasses extends React.Component {
  render() {
      const {image, style, maker, id } = this.props.glasses
    return (
      <>
        <div className="col col-md-3">
          <div className="card">
            <img className="card-img-top" src={image} />
            <div classNamer="card-body">
              <h3>{style}</h3>
              <h4>{maker}</h4>
            </div>
            <Link className="btn btn-info"to={`/shop/${id}`}>See Details</Link>
          </div>
        </div>
      </>
    );
  }
}

export default Glasses;

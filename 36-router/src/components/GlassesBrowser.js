import React from "react";
import Glasses from "./Glasses";

class GlassesBrowser extends React.Component {

  renderGlasses = () => {
    return this.props.glasses.map((glasses, index) => {
      return <Glasses glasses={glasses} key={index} />;
    });
  };
  render() {
    return (
      <>
        <div className="container">
          <div className="row">{this.renderGlasses()}</div>
        </div>
      </>
    );
  }
}

export default GlassesBrowser;

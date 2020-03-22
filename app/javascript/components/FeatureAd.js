import React, { Component } from 'react';

class FeatureAd extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        return ( 
            <section className="feature-area ad d-bg">
                <div className="feature-ad">
                    { this.props.image != "" && <img src={this.props.image} />}
                </div>
            </section>
         );
    }
}
 
export default FeatureAd;
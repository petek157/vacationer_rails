import React, { Component } from 'react';

class InfoSection extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        return ( 
            <section className="info">
                <div className="info-title">The Western Upper Peninsula of Michigan and Northern Wisconsin</div>
                <div className="info-text">This is where all of the main text for this info box will be held. May even enter it as a prop.</div>
            </section>
         );
    }
}
 
export default InfoSection;
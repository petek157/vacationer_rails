import React, { Component } from 'react';

//<%= react_component("InfoSection", {theme: "winter"}) %>
class InfoSection extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        return ( 
            
            <section className="info">
                <div className={"info-title main-heading " + this.props.theme}>The Western Upper Peninsula of Michigan and Northern Wisconsin</div>
                <div className="info-text sub-text">The Western UP of MI and Northern WI have many wonderful indoor and out door activities for all ages. Whether its hiking the waterfalls in the spring, enjoying the 4th of July festivities in the summer, fall color walks or downhill skiing in the winter there is always something to do.</div>
            </section>
         );
    }
}
 
export default InfoSection;
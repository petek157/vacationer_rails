import React, { Component } from 'react';
import Button from "./Button";

class BusinessListing extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() {
        const b = this.props.business;
        return ( 
            <div className="bus-item" >
                <div className="item-box">
                    <div className="item-info">
                        <div className="item-name">{b.name}</div>
                        <div className="item-address">{b.address1}</div>
                        {b.address2 != "" && <div className="item-address">{b.address2}</div>}
                        <div className="item-city">{b.city + ", " + b.state + " " + b.zipcode}</div>
                        <div className="item-phone">{b.phone}</div>
                    </div>
                    <div className="item-nav">
                        {b.website != "" && <Button link={b.website} title="Website" theme={this.props.theme}/>}
                    </div>
                </div>
            </div>
         );
    }
}
 
export default BusinessListing;
import React, { Component } from 'react';
import Logo from "./Logo"

class Header extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        return ( 
            <header className="theme-l">
                <div className="header-logo">
                    <a href="/index.html"><img src={this.props.image} /></a>
                </div>
                <div className="header-title">
                    <div className="header-title-text">{this.props.title}</div>
                </div>
            </header>
         );
    }
}
 
export default Header;
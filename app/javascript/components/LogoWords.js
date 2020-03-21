import React, { Component } from 'react';


class LogoWords extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        return ( 
            <header className="absolute">
                <a href="/index.html" className="logo">
                    <div className="container make-space">
                        <div className="header-title">Western UP and Northern WI</div>
                        <div className="header-name">Vacationer</div>
                        <div className="header-sub">Online.com</div>
                    </div>
                </a>
            </header>
         );
    }
}
 
export default LogoWords;
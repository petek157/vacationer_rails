import React, { Component } from 'react';


class Logo extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        return ( 
            <header className="absolute">
                <div className="container make-space">
                    <a href="/index.html" className="logo">
                        <img src={this.props.image} />
                    </a>
                </div>
            </header>
         );
    }
}
 
export default Logo;
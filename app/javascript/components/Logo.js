import React, { Component } from 'react';


class Logo extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        return ( 
            <header class="absolute">
                <div class="container make-space">
                    <a href="/index.html" class="logo">
                        <img src={this.props.image} />
                    </a>
                </div>
            </header>
         );
    }
}
 
export default Logo;
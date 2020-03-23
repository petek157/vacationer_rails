import React, { Component } from 'react';

class Button extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }

    render() { 
        return ( 
            <div className={"button-container " + this.props.align}>
                <a href={this.props.link}>
                    <button className={"feature-button " + this.props.theme }>{this.props.title}</button>
                </a>
            </div>
        );
    }
}
 
export default Button;
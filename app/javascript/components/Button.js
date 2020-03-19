import React, { Component } from 'react';

class Button extends Component {
    constructor(props) {
        super(props);
        this.state = {  }

        this.clicked = this.clicked.bind(this);
    }
    
    componentDidMount() {

    }

    clicked(link) {
        window.location.href = link;
    }

    render() { 
        return ( 
            <div>
                <button className={"feature-button " + this.props.theme } onClick={this.clicked.bind(this, this.props.link)}>
                    {this.props.title}
                </button>
            </div>
        );
    }
}
 
export default Button;
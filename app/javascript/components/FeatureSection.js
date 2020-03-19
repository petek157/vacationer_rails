import React, { Component } from 'react';

class FeatureSection extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }

    componentDidMount() {
        if (this.props.image) {
            
            if (this.props.align == "left") {
                $(".feature-" + this.props.position).css("background", "linear-gradient(65deg, rgba(255,255,255,1), rgba(255,255,255,1),rgba(255,255,255,0)), url(" + this.props.image + ")");
            } else {
                $(".feature-" + this.props.position).css("background", "linear-gradient(65deg, rgba(255,255,255,0), rgba(255,255,255,1),rgba(255,255,255,1)), url(" + this.props.image + ")");
            }
            
            $(".feature").css("background-repeat", "no-repeat");
            //$(".feature").css("background-image", "linear-gradient(to top right, rgba(255,255,255,0), rgba(255,255,255,1), rgba(255,255,255,1))");
            $(".feature-" + this.props.position).css("background-position", this.props.x + " " + this.props.y );
            //$(".feature-info").css("background-image", "linear-gradient(to top right, rgba(255,255,255,0), rgba(255,255,255,1), rgba(255,255,255,1))" );
        }
    }

    render() { 
        return ( 
            <section className={"feature feature-" + this.props.position + " " + this.props.align}>
                <div className={"feature-info " + this.props.align}>
                    <div className="feature-title">{this.props.title}</div>
                    <div className="feature-text">{this.props.text}</div>
                    <div className="feature-link">
                        <a className="" href={this.props.link}>More Info</a>
                    </div>
                </div>
            </section>
         );
    }
}
 
export default FeatureSection;
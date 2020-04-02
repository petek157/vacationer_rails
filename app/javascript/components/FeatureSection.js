import React, { Component } from 'react';
import Button from "./Button";

class FeatureSection extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }

    componentDidMount() {
        if (this.props.image) {
            
            if (this.props.align == "left") {
                $(".feature-" + this.props.position).css("background", "url(" + this.props.image + ")");
            } else {
                $(".feature-" + this.props.position).css("background", "url(" + this.props.image + ")");
            }
            
            $(".feature-" + this.props.position).css("background-position", this.props.x + " " + this.props.y );

            $(".feature").css("background-repeat", "no-repeat");

        }
        if (this.props.link == "") {
            $(".feature-" + this.props.position + " .feature-link").hide();
        }
    }

    render() { 
        return ( 
            <section className={"feature-area d-bg " + this.props.align}>
                <div className={"feature feature-" + this.props.position + " " + this.props.align}></div>
                <div className={"feature-info " + this.props.align}>
                    <div className="feature-info-items">
                        <div className={"feature-title " + this.props.theme}>{this.props.title}</div>
                        <div className="feature-text sub-text">{this.props.text}</div>
                        {this.props.link != "" &&
                            <div className="feature-link">
                                <Button link={this.props.link} title="More Info" theme={this.props.theme} align={this.props.align}/>
                            </div>
                        }
                    </div>
                </div>
            </section>
         );
    }
}
 
export default FeatureSection;
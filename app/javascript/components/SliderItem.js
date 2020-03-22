import React, { Component } from 'react';

class SliderItem extends Component {
    constructor(props) {
        super(props);

    }

    render() {
        var color = "white" 
        if (this.props.color) {
            color = this.props.color;
        }
        // if (this.props.slide.note != "") {
        //     $(".slider-note").css("background-image", "linear-gradient(rgba(255, 153, 51, 0), " + color + ", " + color + ")");
        //     $(".slider-note").css("display", "block");
        // } else {
        //     //$(".slider-note").css("background-color", "transparent");
        //     $(".slider-note").css("display", "none");
        // }

        // if (this.props.slide.splash != "") {
        //     $(".slider-splash").css("background-color", color);
        //     $(".slider-splash").css("display", "block");
        // } else {
        //     //$(".slider-note").css("background-color", "transparent");
        //     $(".slider-splash").css("display", "none");
        // }
        $(".slider-image").css("background-image", "url(" + this.props.slide.image_url + ")")
        //<img src={this.props.slide.image_url} />
        return ( 
            <div>
                <div className="slider-image">
                    
                </div>
                <div className={"slider-info-box " + this.props.slide.color} >
                    <div className="slider-title">
                        {this.props.slide.title}
                    </div>
                    <div className="slider-subtitle">
                        {this.props.slide.subtitle}
                    </div>
                </div>
                {/* <div className="slider-note">
                    <div className="s-note">
                        {this.props.slide.note}
                    </div>
                </div>
                <div className="slider-splash">
                    {this.props.slide.splash}
                </div> */}
            </div>
         );
    }
}
 
export default SliderItem;
import React, { Component } from 'react';
import SliderItem from './SliderItem'
import axios from 'axios'

class Slider extends Component {
    constructor(props) {
        super(props);
        this.state = {
            slide: {},
            sliders: [],
            index: 0
         }
    }

    slide() {
        $("#slider").fadeOut("slow");
        var i;

        if (this.state.index == this.state.sliders.length - 1) {
            i = 0;
        } else {
            i = this.state.index + 1;
        }
        $("#slider").fadeIn({
            duration: 2000, 
            start:(() => {
                this.setState(prevState => ({
                    slide: prevState.sliders[i],
                    index: i
                }));
            })
        });   
    }

    componentDidMount() {
        axios.get('/slides.json')
        .then(slides => {
            var first = slides.data.sliders[this.state.index];

            this.setState({
                sliders: slides.data.sliders,
                slide: first
            })
            
            if (slides.data.sliders.length > 1) {
                this.interval = setInterval(() => this.slide(), 10000);
            }

        }).catch(res => {
            console.log(res);
        })
    }

    componentWillUnmount() {
        clearInterval(this.interval);
      }

    render() { 
        return ( 
            <section id="slider-box">
                <div id="slider">
                    <SliderItem slide={this.state.slide} color={this.props.color} />                
                </div>
            </section>
         );
    }
}
 
export default Slider;
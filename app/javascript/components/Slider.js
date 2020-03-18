import React, { Component } from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faCircle } from '@fortawesome/free-solid-svg-icons'

class Slider extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        return ( 
            <div class="slider">
                <div class="headline head1">
                    <div class="head-holder">
                        <div class="headline-title dark">Porkies</div>
                        <div class="headline-info light">This is the other porkies information</div>
                    </div>
                </div>
                <div class="headline head2">
                    <div class="head-holder">
                        <div class="headline-title light">Wakefield</div>
                        <div class="headline-info light">This is the other Wakefield information</div>
                    </div>
                </div>
                <div class="slideCount">
                    <span class="c1 slIcon"><FontAwesomeIcon icon={faCircle} /></span><span class="c2 slIcon"><FontAwesomeIcon icon={faCircle} /></span><span class="c3 slIcon"><FontAwesomeIcon icon={faCircle} /></span>
                </div>
            </div>
         );
    }
}
 
export default Slider;
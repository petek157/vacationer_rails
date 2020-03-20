import React, { Component } from 'react';
import Button from "./Button";
import axios from 'axios';

class BusinessCategories extends Component {
    constructor(props) {
        super(props);
        this.state = { 
            cats: []
         }
    }

    componentDidMount () {
        axios.get('/categories.json')
        .then(cats => {

            this.setState({
                cats: cats.data.cats,
            })

        }).catch(res => {
            console.log(res);
        })
    }

    render() { 
        return ( 
            <section className="info">
                <div className={"info-title " + this.props.theme}>Local Businesses</div>
                <div className="info-text">While visiting, please visit all of the Western UP and Northern WI businesses.</div>
                <div className="business-cats">
                    {
                        this.state.cats.map(c => 
                            <Button key={c} link={"businesses?cat=" + c.replace(/ /g, "_").toLowerCase()} title={c} theme={this.props.theme}/>
                        )
                    }
                </div>
            </section>
         );
    }
}
 
export default BusinessCategories;
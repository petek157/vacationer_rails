import React from 'react';

function FeatureAd(props) {
    console.log(props)
    return ( 
        <section className="ad d-bg">
            <div className="feature-ad large">
                {<a target="blank" href={props.link}><img src={props.large} /></a>}
            </div>
            <div className="feature-ad medium">
                {<a target="blank" href={props.link}><img src={props.medium} /></a>}
            </div>
            <div className="feature-ad small">
                {<a target="blank" href={props.link}><img src={props.small} /></a>}
            </div>
        </section>
    );
}
 
export default FeatureAd;
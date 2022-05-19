import React from "react";

const Main = (props) => {
  return (
    <div className="hero">
      <div className="main">
        <div className="image">
          <img  src={`${props.imageUrl}`} />
        </div>
        <div className="content">
          <div className="location">
            <div className="country">{props.location}</div>
            <div className="map"><a href={`${props.googleMapurl}`}>View on Google Map</a></div>
          </div>
          <div className="title">{props.title}</div>
          <div className="date">{props.startDate} - {props.endDate}</div>
          <div className="description">
            {props.descrption}
          </div>
        </div>
      </div>
      <hr/>
    </div>
    
  );
};

export default Main;

import React from 'react';
import { BrowserRouter as Router, Link } from 'react-router-dom'

const Menu = (props) => {
  return (
    <div className="menu-card">
      <div className="menu-name">{props.attributes.name}</div>
      <div className="menu-restaurant-name">
        {props.attributes.restaurant_name}
      </div>
      <div className="menu-link btn btn-dark">
        <Link to={`/menus/${props.attributes.id}`}>Voir le menu</Link>
      </div>
    </div>
  );
};

export default Menu;

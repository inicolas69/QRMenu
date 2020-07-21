import React from 'react';

const Menu = (props) => {
  return (
    <div className="card">
      <div className="menu-name">{props.attributes.name}</div>
      <div className="menu-restaurant-name">
        {props.attributes.restaurant_name}
      </div>
      <div className="menu-link">
        <a href={`/menus/${props.attributes.id}`}>Voir le menu</a>
      </div>
    </div>
  );
};

export default Menu;

import React from 'react';
import { BrowserRouter as Router, Link } from 'react-router-dom';
import { Button, Card } from 'react-bootstrap';

const Menu = (props) => {
  return (
    // <div className="menu-card">
    //   <div className="menu-name">{props.attributes.name}</div>
    //   <div className="menu-restaurant-name">
    //     {props.attributes.restaurant_name}
    //   </div>
    //   <Button variant="dark" className="menu-link">
    //     <Link to={`/menus/${props.attributes.id}`}>Voir le menu</Link>
    //   </Button>
    // </div>
    <Card style={{ width: '18rem' }}>
      <Card.Body>
        <Card.Title>{props.attributes.restaurant_name}</Card.Title>
        <Card.Text>{props.attributes.name}</Card.Text>
        <Button href={`/menus/${props.attributes.id}`} variant="dark">
          Voir le menu
        </Button>
      </Card.Body>
    </Card>
  );
};

export default Menu;

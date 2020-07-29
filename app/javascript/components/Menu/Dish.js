import React from 'react';
import { BrowserRouter as Router, Link } from 'react-router-dom';
import { Button, Card } from 'react-bootstrap';

const Dish = () => {
  return (
    <Card>
      <Card.Header>Poulet </Card.Header>
      <Card.Body>
        <blockquote className="blockquote mb-0">
          <p>Poulet accompagné de son riz bla bla bla lore</p>
          <footer className="blockquote-footer">
            15 <cite title="Source Title">€</cite>
          </footer>
        </blockquote>
      </Card.Body>
    </Card>
  );
};

export default Dish

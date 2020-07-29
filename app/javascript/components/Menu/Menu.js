import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Button, Form } from 'react-bootstrap';
import DishForm from './DishForm';
import Dish from './Dish';

const Menu = (props) => {
  const [menu, setMenu] = useState({});
  const [dish, setDish] = useState({
    name: '',
    description: '',
    price: '',
    category: '',
  });

  useEffect(() => {
    const id = props.match.params.id;
    const url = `/api/v1/menus/${id}`;

    axios
      .get(url)
      .then((resp) => setMenu(resp.data))
      .catch((resp) => console.log(resp));
  }, []);

  return (
    <div className="wrapper">
      <div className="column">
        <DishForm/>
      </div>
      <div className="column">
        <Dish/>
        <div className="dish">Dish</div>
        <div className="dessert">Dessert</div>
      </div>
    </div>
  );
};

export default Menu;

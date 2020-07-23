import React, { useEffect, useState } from 'react';
import axios from 'axios'

const Menu = (props) => {
  const [menu, setMenu] = useState({});
  const [dish, setDish] = useState({
    name: '',
    description: '',
    price: '',
    category: '',
  });

  useEffect(() => {
    const id = props.match.params.id
    const url = `/api/v1/menus/${id}`

    axios
      .get(url)
      .then((resp) => console.log(resp))
      .catch((resp) => console.log(resp));
  })

  return <div>This is the Menu page</div>;
};

export default Menu;

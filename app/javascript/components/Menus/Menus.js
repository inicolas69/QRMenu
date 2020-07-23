import React, { useState, useEffect, Fragment } from 'react';
import axios from 'axios';
import Menu from './Menu';
import styled from 'styled-components'

const Menus = () => {
  const [menus, setMenus] = useState([]);

  useEffect(() => {
    // Get all menus from API
    // Update all menus in our state

    axios
      .get('api/v1/menus.json')
      .then((resp) => {
        setMenus(resp.data.data);
      })
      .catch((data) => console.log('error', data));
  }, [menus.length]);

  const grid = menus.map((item) => {
    return <Menu
      key={item.attributes.name}
      attributes={item.attributes}
    />;
  });

  return (
    <div className="home">
      <div className="header">
        <h1>QRMenu</h1>
        <div className="subHeader">Vos menu en QRCode, simplement.</div>
      </div>
      <div className="grid">
        {grid}
      </div>
    </div>
  );
};

export default Menus;

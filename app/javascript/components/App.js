import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Menus from '../components/Menus/Menus';
import Menu from '../components/Menu/Menu';
import 'bootstrap/dist/css/bootstrap.min.css';

const App = () => {
  return (
    <Switch>
      <Route exact path="/" component={Menus} />
      <Route exact path="/menus/:id" component={Menu} />
    </Switch>
  );
};

export default App;

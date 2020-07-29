import React, { useEffect, useState } from 'react';
import { Button, Form } from 'react-bootstrap';

const DishForm = () => {
  return (
    <Form>
      <Form.Group controlId="dishForm.Title">
        <Form.Label>Titre</Form.Label>
        <Form.Control type="string" />
      </Form.Group>
      <Form.Group controlId="dishForm.Category">
        <Form.Label>Catégorie</Form.Label>
        <Form.Control as="select">
          <option>Entrée</option>
          <option>Plat</option>
          <option>Déssert</option>
          <option>Autre</option>
        </Form.Control>
      </Form.Group>
      <Form.Group controlId="dishForm.Description">
        <Form.Label>Description</Form.Label>
        <Form.Control as="textarea" rows="3" />
      </Form.Group>
      <Form.Group controlId="dishForm.Price">
        <Form.Label>Prix en €</Form.Label>
        <Form.Control type="number" step="0.1" />
      </Form.Group>
      <Button variant="dark" type="submit">
        Ajouter
      </Button>
    </Form>
  );
};

export default DishForm;

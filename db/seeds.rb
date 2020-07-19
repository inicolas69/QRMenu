# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "test@test.com", password: "password")

Menu.create([
  {
    name: "Menu 1",
    restaurant_name: "Restaurant 1",
    user: user,
  },
  {
    name: "Menu 2",
    restaurant_name: "Restaurant 2",
    user: user,
  },
  {
    name: "Menu 3",
    restaurant_name: "Restaurant 3",
    user: user,
  },
])

Dish.create([
  {
    name: "Entrecote",
    price: 15,
    description: "Entrecote grillée et ses légumes",
    category: "Plat",
    menu: Menu.first,
  },
  {
    name: "Poisson",
    price: 14,
    description: "Poisson grillée et ses légumes",
    category: "Plat",
    menu: Menu.first,
  },
  {
    name: "Hamburger du chef",
    price: 11,
    description: "Hamburger du chef et ses frites",
    category: "Plat",
    menu: Menu.first,
  },
  {
    name: "Salade chevre chaud",
    price: 8,
    description: "Salade chevre chaud sur pain grillé",
    category: "Entrée",
    menu: Menu.first,
  },
  {
    name: "Fondant au chocolat",
    price: 15,
    description: "Fondant au chocolat avec boule de glace vanille",
    category: "Déssert",
    menu: Menu.first,
  },
])

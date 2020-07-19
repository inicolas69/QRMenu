class DishSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :price, :menu_id, :category
end

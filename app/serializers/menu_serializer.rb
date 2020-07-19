class MenuSerializer
  include FastJsonapi::ObjectSerializer
  attributes :restaurant_name, :name, :user_id

  has_many :dishes
end

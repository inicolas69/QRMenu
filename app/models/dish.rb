class Dish < ApplicationRecord
  belongs_to :menu
  # validates :name, uniqueness: { scope: :menu }
end

class CategoriesMovie < ActiveRecord::Base
  belongs_to :category
  belongs_to :movie
end

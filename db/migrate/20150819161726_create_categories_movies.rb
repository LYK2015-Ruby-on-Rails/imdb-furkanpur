class CreateCategoriesMovies < ActiveRecord::Migration
  def change
    create_table :categories_movies do |t|
      t.integer :category_id
      t.integer :movie_id

      t.timestamps null: false
    end
  end
end

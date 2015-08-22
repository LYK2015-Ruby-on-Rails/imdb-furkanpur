class CreateActorsMovies < ActiveRecord::Migration
  def change
    create_table :actors_movies do |t|
      t.integer :person_id
      t.integer :movie_id

      t.timestamps null: false
    end
  end
end

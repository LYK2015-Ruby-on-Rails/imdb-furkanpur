class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :desc
      t.integer :rating
      t.datetime :release_date
      t.integer :runtime
      t.string :language
      t.string :country
      t.string :official_site
      t.integer :budget

      t.timestamps null: false
    end
  end
end

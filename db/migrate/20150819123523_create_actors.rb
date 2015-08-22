class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :bio
      t.string :country
      t.integer :age
      t.string :born
      t.string :twitter
      t.string :official_site

      t.timestamps null: false
    end
  end
end

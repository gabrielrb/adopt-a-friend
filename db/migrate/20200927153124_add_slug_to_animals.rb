class AddSlugToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :slug, :string
    add_index :animals, :slug, unique: true
  end
end

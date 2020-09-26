class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :birth_date
      t.string :type

      t.timestamps
    end
  end
end

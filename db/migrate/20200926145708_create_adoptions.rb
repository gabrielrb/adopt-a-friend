class CreateAdoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :adoptions do |t|
      t.string :owner_name
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end

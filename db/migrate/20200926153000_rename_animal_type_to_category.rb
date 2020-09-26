class RenameAnimalTypeToCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :animals, :type, :category
  end
end

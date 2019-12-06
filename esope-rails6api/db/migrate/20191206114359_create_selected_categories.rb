class CreateSelectedCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_categories do |t|
      t.integer :sorting
      t.boolean :status
      t.integer :id_category
      t.integer :id_game

      t.timestamps
    end
  end
end

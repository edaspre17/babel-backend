class CreateSelectedCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_categories do |t|
      t.integer :sorting
      t.boolean :status
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :game_session, null: false, foreign_key: true
    end
  end
end

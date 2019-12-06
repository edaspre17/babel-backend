class CreateHandicapToChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :handicap_to_children do |t|
      t.string :comment
      t.integer :id_child
      t.integer :id_handicap

      t.timestamps
    end
  end
end

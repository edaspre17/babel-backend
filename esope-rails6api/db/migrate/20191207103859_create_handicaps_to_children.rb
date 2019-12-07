class CreateHandicapsToChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :handicaps_to_children do |t|
      t.string :comment
      t.belongs_to :child, null: false, foreign_key: true
      t.belongs_to :handicap, null: false, foreign_key: true
    end
  end
end

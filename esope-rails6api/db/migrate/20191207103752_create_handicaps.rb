class CreateHandicaps < ActiveRecord::Migration[6.0]
  def change
    create_table :handicaps do |t|
      t.string :description
      t.integer :id_handicap
    end
  end
end

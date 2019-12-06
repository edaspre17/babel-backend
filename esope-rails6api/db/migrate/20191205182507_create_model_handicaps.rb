class CreateModelHandicaps < ActiveRecord::Migration[6.0]
  def change
    create_table :model_handicaps do |t|
      t.string :description
      t.integer :id_handicap

      t.timestamps
    end
  end
end

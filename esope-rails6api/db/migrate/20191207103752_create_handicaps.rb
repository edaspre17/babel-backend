class CreateHandicaps < ActiveRecord::Migration[6.0]
  def change
    create_table :handicaps do |t|
      t.string :description
    end
  end
end

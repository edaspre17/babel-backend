class CreateMandates < ActiveRecord::Migration[6.0]
  def change
    create_table :mandates do |t|
      t.string :instigator
      t.string :demand
      t.belongs_to :child, null: false, foreign_key: true
      t.timestamp :insert_date
    end
  end
end

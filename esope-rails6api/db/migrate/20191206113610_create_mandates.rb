class CreateMandates < ActiveRecord::Migration[6.0]
  def change
    create_table :mandates do |t|
      t.string :instigator
      t.string :demand
      t.integer :id_mandate
      t.integer :id_child
      t.timestamp :insert_date

      t.timestamps
    end
  end
end

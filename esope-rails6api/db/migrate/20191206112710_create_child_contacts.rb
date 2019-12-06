class CreateChildContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :child_contacts do |t|
      t.integer :id_user
      t.integer :id_child
      t.timestamp :insert_date
      t.string :relation

      t.timestamps
    end
  end
end

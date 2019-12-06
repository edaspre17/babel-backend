class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :name
      t.string :surname
      t.timestamp :birthday
      t.string :lang
      t.string :hand
      t.string :school
      t.string :school_type
      t.string :school_lvl
      t.string :imagepath
      t.string :note
      t.boolean :archived
      t.integer :version
      t.integer :id_child

      t.timestamps
    end
  end
end

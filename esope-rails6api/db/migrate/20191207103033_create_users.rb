class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :pwd
      t.string :imagepath
      t.string :note
      t.boolean :archived
      t.string :phone
      t.string :email
      t.string :job
      t.timestamp :inserts_date
      t.integer :user_level
      t.integer :version
    end
  end
end

class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :description
      t.string :path
      t.integer :id_pic
      t.integer :id_category

      t.timestamps
    end
  end
end

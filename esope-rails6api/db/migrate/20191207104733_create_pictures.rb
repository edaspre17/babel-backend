class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :description
      t.string :path
      t.belongs_to :category, null: false, foreign_key: true
    end
  end
end

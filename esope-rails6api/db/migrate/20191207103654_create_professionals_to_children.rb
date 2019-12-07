class CreateProfessionalsToChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals_to_children do |t|
      t.integer :id_care
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :child, null: false, foreign_key: true
      t.timestamp :start_care_date
      t.timestamp :en_care_date
    end
  end
end

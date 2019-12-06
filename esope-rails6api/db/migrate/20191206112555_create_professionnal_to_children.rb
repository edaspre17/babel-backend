class CreateProfessionnalToChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :professionnal_to_children do |t|
      t.string :id_care
      t.integer :id_child
      t.integer :id_user_prof
      t.timestamp :start_care_date
      t.timestamp :end_care_date

      t.timestamps
    end
  end
end

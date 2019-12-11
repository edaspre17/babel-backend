class CreateChildrenContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :children_contacts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :child, null: false, foreign_key: true
      t.timestamp :insert_date
      t.string :relation
    end
  end
end

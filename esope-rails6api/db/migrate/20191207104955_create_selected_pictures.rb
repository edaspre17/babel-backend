class CreateSelectedPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_pictures do |t|
      t.string :note
      t.boolean :child_tag
      t.boolean :do_like
      t.boolean :is_happy
      t.boolean :is_autonomous
      t.integer :priority
      t.boolean :would_like
      t.boolean :step_one_done
      t.boolean :step_two_done
      t.boolean :step_three_done
      t.belongs_to :picture, null: false, foreign_key: true
      t.belongs_to :game_session, null: false, foreign_key: true
      t.integer :version
    end
  end
end

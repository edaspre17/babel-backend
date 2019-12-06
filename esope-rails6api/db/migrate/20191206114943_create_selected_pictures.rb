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
      t.integer :id_pic
      t.integer :id_game
      t.integer :version

      t.timestamps
    end
  end
end

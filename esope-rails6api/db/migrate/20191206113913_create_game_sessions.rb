class CreateGameSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :game_sessions do |t|
      t.timestamp :startdate
      t.string :guardian_comment
      t.string :prof_comment
      t.integer :step_one
      t.integer :step_two
      t.integer :step_three
      t.timestamp :finished_date
      t.integer :version
      t.integer :id_game
      t.integer :id_child
      t.integer :id_user_prof
      t.integer :mandate

      t.timestamps
    end
  end
end

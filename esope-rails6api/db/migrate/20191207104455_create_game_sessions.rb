class CreateGameSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :game_sessions do |t|
      t.timestamp :start_date
      t.string :guardian_comment
      t.string :prof_comment
      t.integer :step_one
      t.integer :step_two
      t.integer :step_three
      t.integer :finished_state
      t.integer :version
      t.belongs_to :child, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :mandate, null: false, foreign_key: true
    end
  end
end

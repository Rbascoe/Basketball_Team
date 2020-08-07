class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.integer :basketball_team_id

      t.timestamps
    end
  end
end

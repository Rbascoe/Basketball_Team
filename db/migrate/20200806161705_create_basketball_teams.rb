class CreateBasketballTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :basketball_teams do |t|
      t.string :city_name
      t.string :team_name
      t.string :team_colors
      t.integer :no_of_championships

      t.timestamps
    end
  end
end

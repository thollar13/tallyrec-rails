class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :sport
      t.string :season
      t.string :year
      t.string :logo
    end
  end
end

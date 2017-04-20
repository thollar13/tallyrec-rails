class AddTeamRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.references :team
      t.references :user
      t.integer :role
      t.integer :jersey_number
    end
  end
end

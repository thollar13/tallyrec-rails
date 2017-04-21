class AddTeamRosters < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.references :team
      t.references :user
      t.integer :role
    end
  end
end

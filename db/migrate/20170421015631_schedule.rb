class Schedule < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :team
      t.references :opponent
      t.string :field
      t.string :park
      t.integer :points_for
      t.integer :points_against
      t.integer :result
      t.string :year
      t.string :season
    end
  end
end

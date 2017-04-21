class Opponents < ActiveRecord::Migration
  def change
    create_table :opponents do |t|
      t.references :team
      t.string :name
      t.string :season
      t.string :year
    end
  end
end

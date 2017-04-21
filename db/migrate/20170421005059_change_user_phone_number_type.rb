class ChangeUserPhoneNumberType < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.change :phone_number, :string
    end
  end
end

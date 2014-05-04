class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.string :provider
      t.boolean :state
      t.integer :day
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end
end

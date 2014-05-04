class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.float :amount
      t.string :name_expense
      t.integer :day
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end
end

class ChangeAddDecimals < ActiveRecord::Migration
  def change
    change_column :working_days, :sale, :decimal, :precision => 12, :scale => 2
    change_column :working_days , :cash, :decimal, :precision => 12, :scale => 2
    change_column :working_days, :change_coins, :decimal, :precision => 12, :scale => 2

    #payments
    change_column :payments, :amount, :decimal, :precision => 12, :scale => 2
    #expenses
    change_column :expenses, :amount, :decimal, :precision => 12, :scale => 2
  end
end

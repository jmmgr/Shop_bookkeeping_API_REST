class ChangeFloatTDecimal < ActiveRecord::Migration

#working_days
change_column :working_days, :sale, :decimal
change_column :working_days , :cash, :decimal
change_column :working_days, :change, :decimal

rename_column :working_days, :change, :change_coins

#payments
change_column :payments, :amount, :decimal
#expenses
change_column :expenses, :amount, :decimal
end

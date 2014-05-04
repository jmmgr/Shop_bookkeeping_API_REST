class ExpensesChangeDate < ActiveRecord::Migration
  change_table :expenses do |t|
    t.remove :day, :month, :year
    t.date :day_date, :first => true
   end
end

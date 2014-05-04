class PaymentsChangeDates < ActiveRecord::Migration
  change_table :payments do |t|
    t.remove :day, :month, :year
    t.date :day_date, :after => :id
   end
end

class WorkingDaysDateFirstPosition < ActiveRecord::Migration
  change_table :working_days do |t|
     t.remove :day_date
     t.date :day_date ,:first => true
  end
end

class WorkingDaysChangeDates < ActiveRecord::Migration
  change_table :working_days do |t|
    t.remove :day, :month, :year
    t.date :day_date
  end
end

class PutDatesSecondPosition < ActiveRecord::Migration
  change_table :working_days do |t|
    t.remove :day_date
    t.date :day_date, :after => :id
  end
  change_table :expenses do |t|
    t.remove :day_date
    t.date :day_date, :after => :id
  end
end

class CreateWorkingDays < ActiveRecord::Migration
  def change
    create_table :working_days do |t|
      t.integer :day
      t.integer :month
      t.integer :year
      t.float :sale
      t.float :cash
      t.float :change

      t.timestamps
    end
  end
end

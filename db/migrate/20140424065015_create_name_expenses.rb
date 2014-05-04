class CreateNameExpenses < ActiveRecord::Migration
  def change
    create_table :name_expenses do |t|
      t.string :name

      t.timestamps
    end
  end
end

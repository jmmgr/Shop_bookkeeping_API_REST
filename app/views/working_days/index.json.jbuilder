json.array!(@working_days) do |working_day|

	json.extract! working_day, :id, :day_date, :sale, :cash, :change_coins
 
end

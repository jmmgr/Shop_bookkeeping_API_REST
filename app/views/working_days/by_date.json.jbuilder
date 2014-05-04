json.array!(@working_day_by_date) do |working_day|
	json.extract! working_day, :id, :day_date, :sale, :cash, :change_coins
end
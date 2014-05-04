json.array!(@expenses_by_day) do |expense|
	json.id expense.id
	json.day_date expense.day_date	
	json.amount expense.amount
	json.name_expense expense.name_expense.encode('UTF-8', 'UTF-8')
end

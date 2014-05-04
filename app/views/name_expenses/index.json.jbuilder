json.array!(@name_expenses) do |name_expense|
	json.id name_expense.id
	json.name name_expense.name.encode('UTF-8', 'UTF-8')
end

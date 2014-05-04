json.array!(@payments_by_day) do |payment|
	json.id payment.id
	json.day_date payment.day_date	
	json.amount payment.amount
	json.provider payment.provider.encode('UTF-8', 'UTF-8')
	json.state payment.state

end
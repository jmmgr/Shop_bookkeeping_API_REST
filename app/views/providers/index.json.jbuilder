json.array!(@providers) do |provider|
	json.id provider.id
	json.name provider.name.encode('UTF-8', 'UTF-8')
end

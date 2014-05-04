# originally-> json.extract! @provider, :id, :name, :created_at, :updated_at

json.id @provider.id
json.name @provider.name.encode('UTF-8', 'UTF-8') 	


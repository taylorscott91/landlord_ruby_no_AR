require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  addresses = apartments.map { |apartment| apartment[:address] }
  puts addresses
  # Print all the names for tenants
  tenants = tenants.map { |tenant| tenant[:name] }
  puts tenants
  # Print only apartments that are less then 700 in rent
  cheap_rent = apartments.select{ |apartment| apartment[:monthly_rent] < 700}
  puts cheap_rent
  # Print only tenants that are over the age of 44
  older_folks = tenants.select{ |tenant| tenant[:age] > 44}
  puts older_folks
  # Print only tenants that have an apartment id of 1
  id_1 = tenants.select{ |tenant| tenant[:id] == 1}
  puts id_1
  # Print all the tenants in order from youngest to oldest
  tenants_by_age = tenants.sort_by { |tenant| tenant[:age]  }
  puts tenants_by_age
  # Print the names of all the tenants alphabetically
  tenants_by_name = tenants.sort_by { |tenant| tenant[:name] }
  puts tenants_by_name

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

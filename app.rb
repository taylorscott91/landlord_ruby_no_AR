require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
    # apartments.each do |apartment|
    #   puts apartment[:address]
    # end
  # Print all the names for tenants
    # tenants.each do |tenant|
    #   puts tenant[:name]
    # end
  # Print only apartments that are less then 700 in rent
    # cheaper_apartments = apartments.select do |apartment|
    #   apartment[:monthly_rent] < 700
    # end
    # puts cheaper_apartments
  # Print only tenants that are over the age of 44
    # older_tenants = tenants.select do |tenant|
    #   apartment[:age] > 44
    # end
    # puts older_tenants
  # Print only tenants that have an apartment id of 1
    # apartment_one_tenants = tenants.select do |tenant|
    #   tenant[:apartment_id] == 1
    # end
    # puts apartment_one_tenants
  # Print all the tenants in order from youngest to oldest
    # age_ordered_tenants = tenants.sort_by do |tenant|
    #   tenant[:age]
    # end
  # Print the names of all the tenants alphabetically
    # name_ordered_tenants = tenants.sort_by do |a, b|
    #   a[:name].downcase <=> b[:name].downcase
    # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
    # tenants.each do |tenant|
    #   puts tenant[:name]
    #   tenants_apartment = apartments.find{|apartment| apartment[:id] == tenant[:apartment_id]}
    #   puts tenants_apartment[:name]
    # end

  # When printing all apartments, under each apartment print all of its tenants
    # apartments.each do |apartment|
    #   puts apartment[:address]
    #   tenants_of_apartment = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
    #   tenants_of_apartment.each do |tenant|
    #     puts tenant[:name]
    #   end
    # end

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
require_relative "helpers/ui"
apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

ruby_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
  # Data is contained in a method that returns a hash with 2 key-value pairs.
    # One being apartments containing an array of hashes that have the properties of id, address, monthly_rent and square_feet
    # One being tenants containing an array of hashes that have the properties of id, name, age and apartment_id

# Use enumerables to -
  # Print all the addresses for the tenants
    # ruby_apartments.each do |apartment|
    #   puts apartment.address
    # end
  # Print all the names for tenants
    # ruby_tenants.each do |tenant|
    #   puts tenant.name
    # end
  # Print only apartments that are less then 700 in rent
    # cheaper_apartments = ruby_apartments.select do |apartment|
    #   apartment.monthly_rent < 700
    # end
    # puts cheaper_apartments
  # Print only tenants that are over the age of 44
    # older_tenants = ruby_tenants.select do |tenant|
    #   apartment.age > 44
    # end
    # puts older_tenants
  # Print only tenants that have an apartment id of 1
    # apartment_one_tenants = ruby_tenants.select do |tenant|
    #   tenant.apartment_id == 1
    # end
    # puts apartment_one_tenants
  # Print all the tenants in order from youngest to oldest
    # age_ordered_tenants = ruby_tenants.sort_by do |tenant|
    #   tenant.age
    # end
  # Print the names of all the tenants alphabetically
    # name_ordered_tenants = ruby_tenants.sort_by do |a, b|
    #   a.name.downcase <=> b.name.downcase
    # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
    # ruby_tenants.each do |tenant|
    #   puts tenant.name
    #   tenants_apartment = ruby_apartments.find{|apartment| apartment.id == tenant.apartment_id}
    #   puts tenants_apartment.name
    # end

  # When printing all apartments, under each apartment print all of its tenants
    # ruby_apartments.each do |apartment|
    #   puts apartment.address
    #   tenants_of_apartment = ruby_tenants.select{|tenant| tenant.apartment_id == apartment.id}
    #   tenants_of_apartment.each do |tenant|
    #     puts tenant.name
    #   end
    # end


# App Logic - check out `helpers/ui.rb` for any methods being use that aren't defined in this file
system "clear"
puts "Welcome to Landlord!"
buffer
main_input = menu
while main_input != "exit"
  # Lists all addresses
  if main_input == "1"
    system "clear"
    puts "Heres a list of apartments you own!"
    ruby_apartments.each do |apartment|
      puts apartment.address
    end
    puts "Hit <enter> to continue"
  # Lists all addresses - Over View
  # Lists all tenants
  elsif main_input == "2"
    system "clear"
    puts "Heres a list of tenants you rent to!"
    ruby_tenants.each do |tenant|
      puts tenant.name
    end
    puts "Hit <enter> to continue"
  # Lists all addresses - Over View
  elsif main_input == "3"
    system "clear"
    puts "Heres a list of addresses you own!"
    ruby_apartments.each do |apartment|
      puts apartment.address
      puts "Residents:"
      apartment_tenants = ruby_tenants.select{|tenant| tenant.apartment_id == apartment.id}
      puts "No occupants" if apartment_tenants.length == 0
      apartment_tenants.each{|tenant| puts tenant.name}
      buffer
    end
    puts "Hit <enter> to continue"
  end
  gets.chomp
  system "clear"
  puts (main_input)
  main_input = menu
end

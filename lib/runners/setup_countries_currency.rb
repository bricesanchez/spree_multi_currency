#Currency in Europe is EUR 
["Poland", "Finland", "Portugal", "Romania", "Germany", "France",
 "Slovakia", "Hungary", "Slovenia", "Ireland", "Austria", "Spain",
 "Italy", "Belgium", "Sweden", "Latvia", "Bulgaria",
 "Lithuania", "Cyprus", "Luxembourg", "Malta", "Denmark", "Netherlands",
 "Estonia"].each do |name| 
  country = Spree::Country.find_by_name name
  country.currency = 'EUR'
  country.save
  puts "Currency in #{country.name} is #{country.currency}"
end

# Currency in UK is GBP (it should be already set by default)
country = Spree::Country.find_by_name "United Kingdom"
country.currency = 'GBP'
country.save
puts "Currency in #{country.name} is #{country.currency}"

# Currency in Switzerland is CHF
country = Spree::Country.find_by_name "Switzerland"
country.currency = 'CHF'
country.save
puts "Currency in #{country.name} is #{country.currency}"

# Currency in Japan is JPY
country = Spree::Country.find_by_name "Japan"
country.currency = 'JPY'
country.save
puts "Currency in #{country.name} is #{country.currency}"

# Currency in USA and Canada is USD
["United States", "Canada"].each do |name|
  country = Spree::Country.find_by_name name
  country.currency = 'USD'
  country.save
  puts "Currency in #{country.name} is #{country.currency}"
end

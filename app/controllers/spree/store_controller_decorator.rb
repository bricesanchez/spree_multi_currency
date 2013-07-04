Spree::StoreController.class_eval do
  before_filter :show_currency
  
  
  def show_currency
    if session[:currency]
      puts "Currency is set to: #{session[:currency]}"
      puts "current_currency: #{current_currency}"
    else
      puts "Currency is not set!"
    end
  end
  
  # require 'geocoder'
  # 
  # before_filter :geolocate
  # def geolocate
  #   country = request.location.country_code
  #   puts "here's the geolocation ~~~~~ #{request.location.inspect}"
  # end
end


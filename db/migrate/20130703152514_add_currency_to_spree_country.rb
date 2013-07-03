class AddCurrencyToSpreeCountry < ActiveRecord::Migration
  def change
    add_column :spree_countries, :currency, :string, :default => 'GBP'
  end
end

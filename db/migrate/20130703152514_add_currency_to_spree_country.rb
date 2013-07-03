class AddCurrencyToSpreeCountry < ActiveRecord::Migration
  def change
    add_column :spree_countries, :currency, :string
  end
end

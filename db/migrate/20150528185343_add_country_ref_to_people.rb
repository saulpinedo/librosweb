class AddCountryRefToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :country, index: true
    add_foreign_key :people, :countries
  end
end

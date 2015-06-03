class AddImageToPeople < ActiveRecord::Migration
  def change
  	add_attachment :people, :image
  end
end

class Person < ActiveRecord::Base
	has_many :comments
	belongs_to :country
	has_attached_file :image, styles: { medium: '200x200>', thumb: '56x56>' },:default_url => ""
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end
end

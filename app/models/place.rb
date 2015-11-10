class Place < ActiveRecord::Base
	belongs_to :user
	validate :name,  presence: true

	belongs_to :places
	validates :name, presence: true, length: { minimum: 3}
	validates :address, presence: true
	validates :description, presence: true

end


class Airline < ApplicationRecord
	has_many :flights

	validates :title, presence: true
	validates :fs_code, presence: true
end

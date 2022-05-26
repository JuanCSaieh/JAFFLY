class Reservation < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :flights
  has_one :payment

end

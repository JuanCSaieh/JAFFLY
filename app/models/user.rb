class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservations

  validates :name, presence: true
  after_create :set_default_reservation

  private
  def set_default_reservation
    self.reservations.create(name: "Mi Primer Viaje con Jaffly")
    self.defaultReservation = self.reservations.first.id
  end

end

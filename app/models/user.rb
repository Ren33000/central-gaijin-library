class User < ApplicationRecord
  has_many :bookings # bookings as a client
  has_many :books
  has_many :bookings_as_owner, through: :books, source: :bookings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :email, :address, :password, presence: true
end

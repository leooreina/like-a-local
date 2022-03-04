class User < ApplicationRecord
  has_many :experiences, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

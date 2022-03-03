class Experience < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :photo

  validates :location, :title, :price, :description, presence: true
  validates :week_days, :starting_time, :duration, presence: true

  validates :title, length: { minimum: 5 }
  validates :duration, inclusion: { in: (1..12) }
end

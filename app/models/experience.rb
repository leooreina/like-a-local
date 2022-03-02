class Experience < ApplicationRecord
  belongs_to :user
  validates :location, :title, :price, :description, :attendees, presence: true
  validates :week_days, :starting_time, :duration, presence: true

  validates :attendees, inclusion: { in: (1..10) }
  validates :title, length: { minimum: 5 }
  validates :starting_time, inclusion: { in: (0..23) }
  validates :duration, inclusion: { in: (1..12) }
end

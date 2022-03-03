class Order < ApplicationRecord
  belongs_to :experience
  belongs_to :user
  validates :attendees, presence: true
end

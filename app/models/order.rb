class Order < ApplicationRecord
  belongs_to :experiences
  belongs_to :users
  validates :attendees, presence: true
end

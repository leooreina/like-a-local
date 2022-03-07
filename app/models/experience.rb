class Experience < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :location, :title, :price, :description, presence: true
  validates :week_days, :starting_time, :duration, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_city,
    against: [ :city ],
    using: {
      tsearch: { prefix: true }
    }
end

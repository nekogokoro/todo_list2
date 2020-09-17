class Task < ApplicationRecord
  validates :title, presence: true, length: { maximum: 30 }
  validates :description, presence: true
  validates :deadline, presence: true

  belongs_to :user
  has_one_attached :image

  scope :recent, -> { order(created_at: :desc) }
end

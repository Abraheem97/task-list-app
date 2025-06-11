class Task < ApplicationRecord
  belongs_to :list

  validates :title, presence: true

  scope :completed, -> { where(completed: true) }
  scope :incomplete, -> { where(completed: false) }
end

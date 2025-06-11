# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :list, counter_cache: true

  validates :title, presence: true

  enum :priority, { low: 0, medium: 1, high: 2 }

  before_validation :normalize_title
  before_create :set_position

  scope :completed,   -> { where(completed: true) }
  scope :incomplete,  -> { where(completed: false) }

  private

  def normalize_title
    self.title = title.strip.titleize if title.present?
  end

  def set_position
    self.position = (list.tasks.maximum(:position) || 0) + 1
  end
end

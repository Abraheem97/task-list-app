class List < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :title, presence: true

  before_validation :normalize_title

  def percent_complete
    return 0 if tasks_count.zero?

    (tasks.where(completed: true).count.to_f / tasks_count * 100).round
  end

  private

  def normalize_title
    self.title = title.strip.titleize if title.present?
  end
end

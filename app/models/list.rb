class List < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :title, presence: true

  before_validation :normalize_title
  before_destroy :ensure_no_incomplete_tasks, prepend: true

  def percent_complete
    return 0 if tasks_count.zero?

    (tasks.completed.count.to_f / tasks_count * 100).round
  end

  private

  def normalize_title
    self.title = title.strip.titleize if title.present?
  end

  def ensure_no_incomplete_tasks
    if tasks.incomplete.any?
      errors.add(:base, "Cannot delete list with incomplete tasks")
      throw(:abort)
    end
  end
end
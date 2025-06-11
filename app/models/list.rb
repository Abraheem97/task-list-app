class List < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :title, presence: true

  def percent_complete
    return 0 if tasks.count == 0
    (tasks.where(completed: true).count.to_f / tasks.count * 100).round
  end
end

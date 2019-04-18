class JobTracker < ApplicationRecord
  belongs_to :user

  def trackers(array)
    array.uniq
  end
end

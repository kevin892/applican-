class User < ApplicationRecord
  has_one :resume
  has_many :notes
  has_many :job_trackers

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

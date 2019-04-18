class User < ApplicationRecord
  has_one :resume
  has_many :notes
  has_many :job_trackers

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def add_s
    "#{self.first_name}'s"
  end
end

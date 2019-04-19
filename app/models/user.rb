class User < ApplicationRecord
  has_one :resume
  has_many :notes
  has_many :job_trackers

  validates :first_name, {
  presence: true
}

  validates :last_name, {
  presence: true
  }

  validates :email, {
  presence: true,
  uniqueness: true
  }

  validates :linkedin, {
  presence: true,
  uniqueness: true
  }

  validates :github, {
  presence: true,
  uniqueness: true
  }

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def add_s
    "#{self.first_name}'s"
  end
end

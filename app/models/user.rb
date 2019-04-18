class User < ApplicationRecord
  has_one :resume
  has_many :notes
  has_many :job_trackers 
end

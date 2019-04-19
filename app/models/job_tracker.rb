class JobTracker < ApplicationRecord
  belongs_to :user

    validates :company, {
    presence: true,
  }

end

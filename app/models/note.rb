class Note < ApplicationRecord
  belongs_to :user

  def dat
    bb = self.created_at.to_s
    bb.chomp("UTC")
  end
end

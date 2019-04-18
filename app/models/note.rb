class Note < ApplicationRecord
  belongs_to :user

  def long_date
    self.created_at.to_formatted_s(:long_ordinal)
  end

  def short_date
    new_date = self.created_at.to_formatted_s(:short)
    new_date[0...-5]
  end
end

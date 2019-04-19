class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def short_date
    new_date = self.Time.now(:short)
    new_date[0...-5]
  end
end

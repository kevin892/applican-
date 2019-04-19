class Resume < ApplicationRecord
  belongs_to :user

  def split_skills
    self.skills.split(",")
  end


  def start_job
    new_date = self.last_job_start_date.to_formatted_s(:long)
    new_date[0...-5]
  end

  def end_job
    new_date = self.last_job_end_date.to_formatted_s(:long)
    new_date[0...-5]
  end

  validates :bio, {
  presence: true
}

  validates :skills, {
  presence: true
  }

  validates :school, {
  presence: true,
  }

  validates :degree, {
  presence: true,
  }

  validates :grad_year, {
  presence: true,
  }
  validates :last_job_company, {
  presence: true,
  }

  validates :last_job_title, {
  presence: true,
  }

  validates :last_job_start_date, {
  presence: true,
  }

  validates :last_job_end_date, {
  presence: true,
  }

  validates :last_job_description, {
  presence: true,
  }
  
end

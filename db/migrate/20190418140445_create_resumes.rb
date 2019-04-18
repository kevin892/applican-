class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.references :user, foreign_key: true
      t.text :bio
      t.text :skills
      t.string :school
      t.string :degree
      t.integer :grad_year
      t.string :last_job_company
      t.string :last_job_title
      t.datetime :last_job_start_date
      t.datetime :last_job_end_date
      t.text :last_job_description

      t.timestamps
    end
  end
end

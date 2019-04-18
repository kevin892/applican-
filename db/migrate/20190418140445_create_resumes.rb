class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.references :user, foreign_key: true
      t.text :bio
      t.text :skills
      t.text :education
      t.text :recent_job

      t.timestamps
    end
  end
end

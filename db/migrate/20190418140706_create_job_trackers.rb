class CreateJobTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_trackers do |t|
      t.references :user, foreign_key: true
      t.string :company
      t.string :position
      t.string :status
      t.string :activity

      t.timestamps
    end
  end
end

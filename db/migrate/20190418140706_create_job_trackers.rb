class CreateJobTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_trackers do |t|
      t.references :user, foreign_key: true
      t.text :sent_apps

      t.timestamps
    end
  end
end

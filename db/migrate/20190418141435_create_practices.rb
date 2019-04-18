class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end

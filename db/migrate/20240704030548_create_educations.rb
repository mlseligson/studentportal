class CreateEducations < ActiveRecord::Migration[7.1]
  def change
    create_table :educations do |t|
      t.date :start_date
      t.date :end_date
      t.string :university_name
      t.string :degree
      t.text :details

      t.timestamps
    end
  end
end

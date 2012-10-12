class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school
      t.string :website
      t.string :location
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :keywords

      t.timestamps
    end
  end
end

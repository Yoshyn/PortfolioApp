class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :compagny
      t.string :website
      t.string :position
      t.string :location
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :keywords

      t.timestamps
    end
  end
end

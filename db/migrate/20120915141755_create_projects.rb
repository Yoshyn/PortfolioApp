class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :technologies
      t.string :status
      t.string :website
      t.text :description

      t.timestamps
    end
  end
end

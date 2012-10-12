class CreatePictureRelations < ActiveRecord::Migration
  def change
    create_table :picture_relations do |t|
      t.integer :picture_id
      t.integer :parent_id
      t.string :parent_type

      t.timestamps
    end
  end
end

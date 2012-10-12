class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :firstname
      t.string :location
      t.string :login
      t.string :email
      t.string :password_digest
      t.string :title
      t.text :description
      t.text :hobby
      t.string :git_link
      t.string :fb_link
      t.string :twitter_link
      t.string :lkdIn_link

      t.timestamps
    end
  end
end

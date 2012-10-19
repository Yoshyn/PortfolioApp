class AddColumnWorkInformationsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :workInformations, :text
  end
end

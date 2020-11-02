class FixColumnNamesToUsers < ActiveRecord::Migration[6.0]
  def change 
    rename_column :users, :Location, :location
    rename_column :users, :Education, :education
    rename_column :users, :Work, :work
    rename_column :users, :Bio, :bio
  end
end

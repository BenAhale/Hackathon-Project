class AddLocationEducationWorkBioToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Location, :string
    add_column :users, :Education, :string
    add_column :users, :Work, :string
    add_column :users, :Bio, :text
  end
end

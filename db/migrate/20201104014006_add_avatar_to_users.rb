class AddAvatarToUsers < ActiveRecord::Migration[6.0]
  def up
    change_table :users do |t|
      t.attachment :avatar
    end
  end

  def down 
    drop_attached_file :users, :avatar
  end
end

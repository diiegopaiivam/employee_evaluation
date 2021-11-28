class AddAvatarToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :avatar, :string
  end
end

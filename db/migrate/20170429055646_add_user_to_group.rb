class AddUserToGroup < ActiveRecord::Migration[5.0]
  def change
    add_reference :groups, :user, foreign_key: true
  end
end

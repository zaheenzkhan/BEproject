class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
    add_index :members , [:user_id,:group_id]
  end
end

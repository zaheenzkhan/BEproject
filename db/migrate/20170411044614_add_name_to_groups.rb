class AddNameToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :name, :string
  end
end

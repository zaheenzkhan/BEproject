class Groupforeignkey < ActiveRecord::Migration[5.0]
  def change
 	add_foreign_key :groups, :users
  end
end

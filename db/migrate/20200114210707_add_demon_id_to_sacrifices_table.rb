class AddDemonIdToSacrificesTable < ActiveRecord::Migration[6.0]
  def change
    add_column :sacrifices, :demon_id, :integer
  end
end

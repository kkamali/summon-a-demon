class AddSuccessfulToSummons < ActiveRecord::Migration[6.0]
  def change
    add_column :summons, :successful, :boolean
  end
end

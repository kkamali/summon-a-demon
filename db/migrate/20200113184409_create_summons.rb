class CreateSummons < ActiveRecord::Migration[6.0]
  def change
    create_table :summons do |t|
      t.belongs_to :user
      t.belongs_to :demon
      t.belongs_to :sacrifice

      t.timestamps
    end
  end
end

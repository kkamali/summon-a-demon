class CreateSacrifices < ActiveRecord::Migration[6.0]
  def change
    create_table :sacrifices do |t|
      t.string :name
      t.string :quantity
      t.belongs_to :summon

      t.timestamps
    end
  end
end

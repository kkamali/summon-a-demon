class CreateDemons < ActiveRecord::Migration[6.0]
  def change
    create_table :demons do |t|
      t.string :title
      t.string :name

      t.timestamps
    end
  end
end

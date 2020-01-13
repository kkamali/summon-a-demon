class CreateDemons < ActiveRecord::Migration[6.0]
  def change
    create_table :demons do |t|
      t.string :circle
      t.string :sacrifices
      t.string :email
      t.string :password_digest
      t.string :name

      t.timestamps
    end
  end
end

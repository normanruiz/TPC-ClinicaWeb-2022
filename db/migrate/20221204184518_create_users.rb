class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user
      t.string :password
      t.references :profile, null: false, foreign_key: true
      t.boolean :state

      t.timestamps
    end
  end
end

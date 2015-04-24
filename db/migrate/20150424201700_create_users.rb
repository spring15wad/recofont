class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :uid
      t.string :provider
      t.belongs_to :team, index: true

      t.timestamps null: false
    end
    add_foreign_key :users, :teams
  end
end

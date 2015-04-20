class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :uid
      t.belongs_to :team, index: true
    end
    add_foreign_key :users, :teams
  end
end

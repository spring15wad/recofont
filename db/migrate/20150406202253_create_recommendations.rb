class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.binary :recommendation
      t.text :font_stack
      t.string :pull_request_url
      t.integer :team_id

      t.timestamps null: false
    end
  end
end

class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.text   :description
      t.string :url
      t.integer :recommendation_id

      t.timestamps null: false
    end
  end
end

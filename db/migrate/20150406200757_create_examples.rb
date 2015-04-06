class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :url
      t.binary :file
      t.integer :recommendation_id

      t.timestamps null: false
    end
  end
end

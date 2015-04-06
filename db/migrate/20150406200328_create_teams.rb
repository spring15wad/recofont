class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :project_name
      t.string :proposal
      t.string :github_repo

      t.timestamps null: false
    end
  end
end

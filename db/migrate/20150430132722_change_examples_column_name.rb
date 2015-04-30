class ChangeExamplesColumnName < ActiveRecord::Migration
  def change
    rename_column :examples, :url, :example_url
  end
end

class RemoveFileFromExamples < ActiveRecord::Migration
  def change
    remove_column :examples, :file, :binary
  end
end

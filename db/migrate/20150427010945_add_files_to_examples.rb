class AddFilesToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :filename, :string
    add_column :examples, :filedata, :binary
    add_column :examples, :mime_type, :string
  end
end

class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :filename
      t.binary :filedata
      t.string :mime_type
      t.belongs_to :example, index: true

      t.timestamps null: false
    end
    add_foreign_key :attachments, :examples
  end
end

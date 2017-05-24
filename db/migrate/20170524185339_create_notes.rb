class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.boolean :starred
      t.boolean :archived

      t.timestamps
    end
  end
end

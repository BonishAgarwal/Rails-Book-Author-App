class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.timestamps
      t.string :title
      t.string :description
      t.belongs_to :author, foreign_key: true
    end
  end
end

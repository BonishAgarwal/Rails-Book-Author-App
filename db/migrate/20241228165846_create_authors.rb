class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.timestamps
      t.string :name
      t.string :email
    end
  end
end

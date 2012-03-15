class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :username
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end

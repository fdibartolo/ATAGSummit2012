class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.integer :article_id
      t.integer :author_id

      t.timestamps
    end
  end
end

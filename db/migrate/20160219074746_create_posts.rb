class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :channel
      t.text :text

      t.timestamps
    end
  end
end

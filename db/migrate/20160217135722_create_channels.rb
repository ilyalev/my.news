class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :title
      t.text :description
      t.string :author
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end

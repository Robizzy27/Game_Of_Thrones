class CreateCharacter < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :title
      t.references :house, index: true, foreign_key: true
      t.string :image
    end
  end
end

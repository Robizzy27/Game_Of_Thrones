class CreateKing < ActiveRecord::Migration
  def change
    create_table :kings do |t|
      t.string :name
      t.string :image
      t.string :story
    end
  end
end

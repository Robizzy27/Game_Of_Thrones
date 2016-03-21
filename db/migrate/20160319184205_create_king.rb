class CreateKing < ActiveRecord::Migration
  def change
    create_table :kings do |t|
      t.string :name
      t.string :image
    end
  end
end

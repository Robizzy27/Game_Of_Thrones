class CreateHouse < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.references :region, index: true, foreign_key: true
      t.string :image
    end
  end
end

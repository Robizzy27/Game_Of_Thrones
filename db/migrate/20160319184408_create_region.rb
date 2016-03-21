class CreateRegion < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.references :king, index: true, foreign_key: true
    end
  end
end

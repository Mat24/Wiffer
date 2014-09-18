class CreateLocalizations < ActiveRecord::Migration
  def change
    create_table :localizations do |t|
      t.references :red, index: true
      t.decimal :coord_x, precision: 10, scale: 10
      t.decimal :coord_y, precision: 10, scale: 10

      t.timestamps
    end
  end
end

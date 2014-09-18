class CreateCaptures < ActiveRecord::Migration
  def change
    create_table :captures do |t|
      t.references :red, index: true
      t.string :url

      t.timestamps
    end
  end
end

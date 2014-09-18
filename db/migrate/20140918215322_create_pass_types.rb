class CreatePassTypes < ActiveRecord::Migration
  def change
    create_table :pass_types do |t|
      t.references :red, index: true
      t.string :type

      t.timestamps
    end
  end
end

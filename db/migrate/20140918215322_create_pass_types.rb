class CreatePassTypes < ActiveRecord::Migration
  def change
    create_table :pass_types do |t|
      t.string :type

      t.timestamps
    end
  end
end

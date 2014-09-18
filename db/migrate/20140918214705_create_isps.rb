class CreateIsps < ActiveRecord::Migration
  def change
    create_table :isps do |t|
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end

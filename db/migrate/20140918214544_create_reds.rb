class CreateReds < ActiveRecord::Migration
  def change
    create_table :reds do |t|
      t.references :isp, index: true
      t.references :pass_type, index: true
      t.string :password
      t.string :wps_pin

      t.timestamps
    end
  end
end

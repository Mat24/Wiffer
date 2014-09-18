class CreateRouters < ActiveRecord::Migration
  def change
    create_table :routers do |t|
      t.references :red, index: true
      t.string :bssid
      t.string :essid
      t.string :comment
      t.string :public_ip
      t.string :port

      t.timestamps
    end
  end
end

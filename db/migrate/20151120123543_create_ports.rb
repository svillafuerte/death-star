class CreatePorts < ActiveRecord::Migration
  def change
    create_table :ports do |t|
      t.string :name
      t.string :type

      t.timestamps null: false
    end
  end
end

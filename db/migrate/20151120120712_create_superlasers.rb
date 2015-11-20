class CreateSuperlasers < ActiveRecord::Migration
  def change
    create_table :superlasers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class AddUserLabel < ActiveRecord::Migration
  def change
    create_table :labels, force: :cascade do |t|
      t.string :name, null: false
      t.string :colour, null: false
      t.timestamps null:false
    end
  end
end

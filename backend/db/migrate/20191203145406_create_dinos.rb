class CreateDinos < ActiveRecord::Migration[6.0]
  def change
    create_table :dinos do |t|
      t.string :img
      t.string :name

      t.timestamps
    end
  end
end

class CreateUserCards < ActiveRecord::Migration[6.0]
  def change
    create_table :user_cards do |t|
      t.integer :dino_id
      t.integer :color_id
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

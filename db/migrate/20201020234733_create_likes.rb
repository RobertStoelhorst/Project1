class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :user_id, foreign_key: true
      t.belongs_to :joke_id, foreign_key: true

      t.timestamps
    end
  end
end

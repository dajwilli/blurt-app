class CreateBlurtLikes < ActiveRecord::Migration
  def change
    create_table :blurt_likes do |t|
      t.references :blurt, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

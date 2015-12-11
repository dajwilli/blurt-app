class CreateBlurts < ActiveRecord::Migration
  def change
    create_table :blurts do |t|
      t.text :message

      t.timestamps null: false
    end
  end
end

class CreateProjectos < ActiveRecord::Migration
  def change
    create_table :projectos do |t|
      t.string :title
      t.text :body
      t.string :image
      t.boolean :completed

      t.timestamps null: false
    end
  end
end

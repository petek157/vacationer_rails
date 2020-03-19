class CreateFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :features do |t|
      t.boolean :published
      t.integer :position
      t.string :title
      t.text :text
      t.string :link
      t.string :align
      t.string :x
      t.string :y
      t.string :theme

      t.timestamps
    end
  end
end

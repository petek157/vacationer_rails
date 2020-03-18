class CreateSliders < ActiveRecord::Migration[6.0]
  def change
    create_table :sliders do |t|
      t.string :title
      t.string :subtitle
      t.string :note
      t.string :splash
      t.boolean :published
      t.integer :position
      t.string :color

      t.timestamps
    end
  end
end

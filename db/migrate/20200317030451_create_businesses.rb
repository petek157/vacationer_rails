class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name, null: false
      t.decimal :latitude, precision: 9, scale: 6
      t.decimal :longitude, precision: 9, scale: 6
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state, limit: 2
      t.string :zipcode, limit: 10
      t.string :phone, phone: 14
      t.string :website
      t.string :category, null: false
      t.boolean :isFeatured, default: false
      t.integer :position
      t.boolean :isActive, default: true

      t.timestamps
    end
  end
end

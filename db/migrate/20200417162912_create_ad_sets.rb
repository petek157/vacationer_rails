class CreateAdSets < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_sets do |t|
      t.integer :views
      t.boolean :published
      t.integer :business_id

      t.timestamps
    end
    add_index :ad_sets, :business_id
  end
end

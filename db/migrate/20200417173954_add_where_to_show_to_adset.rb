class AddWhereToShowToAdset < ActiveRecord::Migration[6.0]
  def change
    add_column :ad_sets, :on_main, :boolean
    add_column :ad_sets, :on_cat, :boolean
    add_column :ad_sets, :on_other_cat, :boolean
    add_column :ad_sets, :other_cat, :string
  end
end

class AddCatToAdset < ActiveRecord::Migration[6.0]
  def change
    add_column :ad_sets, :cat, :string
  end
end

class AddUrlToAdset < ActiveRecord::Migration[6.0]
  def change
    add_column :ad_sets, :url, :string
  end
end

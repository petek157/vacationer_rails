class AddNameToAdSet < ActiveRecord::Migration[6.0]
  def change
    add_column :ad_sets, :name, :string
  end
end

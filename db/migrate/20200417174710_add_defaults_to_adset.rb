class AddDefaultsToAdset < ActiveRecord::Migration[6.0]
  def change
    change_column_default :ad_sets, :published, false
    change_column_default :ad_sets, :on_main, false
    change_column_default :ad_sets, :on_cat, false
    change_column_default :ad_sets, :on_other_cat, false
    change_column_default :ad_sets, :views, 0
  end
end

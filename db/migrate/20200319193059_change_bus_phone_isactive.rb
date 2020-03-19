class ChangeBusPhoneIsactive < ActiveRecord::Migration[6.0]
  def change
    change_column :businesses, :phone, :string, limit: 14
    remove_column :businesses, :isActive, :boolean, default: true
    add_column :businesses, :published, :boolean, default: true
  end
end

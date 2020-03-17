class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, :limit => 25
      t.string :email, :limit => 100
      t.string :password_digest
      t.string :firstname, :limit => 25
      t.string :lastname, :limit => 50
      t.string :role, :limit => 25

      t.timestamps
    end
  end
end

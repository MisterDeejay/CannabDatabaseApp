class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string :full_name
			t.string :email, null: false
			t.string :username
			t.string :session_token
			t.string :password_digest

			t.timestamps null: false
    end

		add_index :users, :username, unique: true
		add_index :users, :email, unique: true
  end
end

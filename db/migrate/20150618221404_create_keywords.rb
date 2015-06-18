class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
			t.string :name, null: false
			t.references :taggable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end

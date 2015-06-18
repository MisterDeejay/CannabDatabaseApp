class CreatePhytoCannabinoids < ActiveRecord::Migration
  def change
    create_table :phyto_cannabinoids do |t|
			t.string :name, null: false
			t.references :taggable, polymorphic: true, index: true

		t.timestamps null: false	
    end
  end
end

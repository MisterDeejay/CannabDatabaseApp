class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
			t.text :title, null: false
			t.integer :journal_id
			t.string :volume
			t.string :issue
			t.date :date_published
			t.text :article_url
			t.boolean :dosage_included
			t.string :dosage_amt

      t.timestamps null: false
    end
  end
end

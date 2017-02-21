class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string   :title, null: false
      t.string   :url, null: false
      t.text     :content, null: false
      t.datetime :published_at

      t.timestamps
    end
  end
end

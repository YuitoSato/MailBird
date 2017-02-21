class CreateKeyphrases < ActiveRecord::Migration[5.0]
  def change
    create_table :keyphrases do |t|
      t.string  :name, null: false
      t.integer :content_id, null: false
      t.integer :score, default: 0, null: false

      t.timestamps
    end
  end
end

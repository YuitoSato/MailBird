class CreateKeyphrases < ActiveRecord::Migration[5.0]
  def change
    create_table :keyphrases do |t|
      t.string  :name
      t.integer :content_id
      t.integer :score

      t.timestamps
    end
  end
end

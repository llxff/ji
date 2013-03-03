class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.text :description
      t.integer :story_category_id
      t.integer :risk_cd, default: 0
      t.integer :status_cd, default: 0

      t.timestamps
    end
  end
end

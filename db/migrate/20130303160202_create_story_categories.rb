class CreateStoryCategories < ActiveRecord::Migration
  def change
    create_table :story_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateReviewContents < ActiveRecord::Migration
  def change
    create_table :review_contents do |t|
      t.integer :template_item_id
      t.integer :review_id
      t.text  :text
      t.timestamps null: false
    end
  end
end

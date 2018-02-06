class CreateTemplateItemOptions < ActiveRecord::Migration
  def change
    create_table :template_item_options do |t|
      t.string :choice
      t.integer :template_item_id
      t.timestamps null: false
    end
  end
end

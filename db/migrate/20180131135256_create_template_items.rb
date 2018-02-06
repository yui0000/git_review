class CreateTemplateItems < ActiveRecord::Migration
  def change
    create_table :template_items do |t|
      t.string  :type
      t.string  :name
      t.integer :template_id
      t.timestamps null: false
    end
  end
end

class AddFieldclassToTemplateItems < ActiveRecord::Migration
  def change
    add_column :template_items, :fieldclass, :string
    remove_column :template_items, :type, :string
  end
end

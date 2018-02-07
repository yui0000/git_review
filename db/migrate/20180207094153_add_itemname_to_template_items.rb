class AddItemnameToTemplateItems < ActiveRecord::Migration
  def change
    add_column :template_items, :itemname, :string
    remove_column :template_items, :name, :string
  end
end

class Template < ActiveRecord::Base
    belongs_to :user
    has_many :template_items #throughでoption定義?
    accepts_nested_attributes_for :template_items, allow_destroy: true   #親子関係
end

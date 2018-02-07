class Template < ActiveRecord::Base
    belongs_to :user
    has_many :template_items #throughでitemoption定義？
    accepts_nested_attributes_for :template_items   #親子関係
end

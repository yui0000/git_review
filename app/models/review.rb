class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :template
    has_many :review_items
    accepts_nested_attributes_for :review_items
end

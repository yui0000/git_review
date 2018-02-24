class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :template
    has_many :review_contents
    accepts_nested_attributes_for :review_contents, allow_destroy: true
end

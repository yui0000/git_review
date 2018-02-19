class ReviewContent < ActiveRecord::Base
    belongs_to :review
    belongs_to :template_item
end

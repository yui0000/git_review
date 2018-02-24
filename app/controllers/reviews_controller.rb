class ReviewsController < ApplicationController
    include Common
    before_action :authenticate_user!
    before_action :templateList
    
    def index
        if params[:template_id].present?
            @reviews = Review.where(template_id: params[:template_id]).order('created_at desc')
            @template_id = params[:template_id]
        end
    end
    
    def new
        @template_items = TemplateItem.where(template_id: params[:template_id]).order('id desc')
        @review = current_user.reviews.new
        @review.review_contents.build
    end

    def create
        Review.create(review_params)
    end
    
    def search
        if params[:template_id].present?
            @reviews = Review.where(template_id: params[:template_id]).order('created_at desc')
            @template_id = params[:template_id]
        end
    end
    
    private
    def review_params
        params.require(:review).permit(:template_id, :user_id, review_contents_attributes: [:id, :template_item_id, :text, :_destroy])
    end

    
end

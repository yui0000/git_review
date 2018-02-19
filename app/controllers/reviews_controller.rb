class ReviewsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @templates = Template.where(current_user.id).order('created_at asc')
        if params[:template_id].present?
            @reviews = Review.where(template_id: params[:template_id]).order('created_at desc')
            @template_id = params[:template_id]
        end
    end
    
    def new
    end

    def create
    end

    
    
end

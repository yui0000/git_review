class TemplatesController < ApplicationController
    include Common
    before_action :templateList
        
    def new
        @template = current_user.templates.new
        @template.template_items.build
    end
    
    
    def create
        Template.create(template_params)
    end
    
    private 
    def template_params
        params.require(:template).permit(:name, :color, :user_id, template_items_attributes: [:id, :fieldclass, :itemname, :_destroy])
    end
    
end

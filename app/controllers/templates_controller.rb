class TemplatesController < ApplicationController
    
    def new
        @template = current_user.templates.build
        @template.template_items.build
    end
    
    
    def create
        Template.create(template_params)
    end
    
    private 
    def template_params
        params.require(:template).permit(:name, :color, :user_id, template_items_attributes: [:itemname])
    end
    
end

class TemplatesController < ApplicationController
    
    def new
        @template = Template.new
    end
    
    
    def create
        Template.create(name: template_params[:name], color: template_params[:color], user_id: current_user.id)
    end
    
    private 
    def template_params
        params.require(:template).permit(:name, :color)
    end
    
    
end

module ApplicationHelper
  def nav_class(params, selected_action) 
     
    
    if params[:action] == selected_action
      return "active"
    else
      return ''
    end
  end
end

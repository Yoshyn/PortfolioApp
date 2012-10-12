module ApplicationHelper
  
  def logged_in?
    session[:login].eql?(Profile.find(:first).login)
  end
  
  def link_to_remove_picture(name, form)
    form.hidden_field(:_destroy) + link_to_function(name, "remove_picture(this)")
  end
  
  def link_to_add_picture(form, picture)
    picture_relation = PictureRelation.new
    fields = form.fields_for(:picture_relations, picture_relation, :child_index => "new_picture_relation") do |builder|
      render(:partial => 'picture_relations/picture_relation_fields', :locals => {:p_id => picture.id, :p_url => picture.url, :form => builder})
    end
    link_to_function("Add this Picture", "add_picture(\"#{escape_javascript(fields)}\")")
  end 
end

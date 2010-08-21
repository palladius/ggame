# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # magically links a generic object..
  def link_me(match, opts={})
    # manage somewhat options...
    link_to( match,match, opts) rescue "LinkMeErr: No Match ('#{$!}')" 
  end
end

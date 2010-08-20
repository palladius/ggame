module UsersHelper
  
  def to_html(user)
    "<span class='user'>#{user.username} <#{link_to user.email, "mailto:#{user.email}"}></span>"
  end
end

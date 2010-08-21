module UsersHelper
  
  # this method gives a HTML representation of a user with his role
  def to_html(user)
    mail_link = link_to user.email, "mailto:#{user.email}"
    "<span class='user'><b>#{user.username}</b> (#{role(user)})</span>"
  end
  
  # gives the role of a User, that is the string representation of 
  # the LEVEL (0=normal, 1=admin, 2=superadmin), represented itself into
  # the to_html() method..
  def role(user)
    level = user.level || 0
    case level
      when 0:  return 'user'
      when 1:  return 'admin'
      when 2:  return 'super-admin'
    end
    "unknown-level (#{level})"
  end

end

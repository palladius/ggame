module UsersHelper
  
  def to_html(user)
    mail_link = link_to user.email, "mailto:#{user.email}"
    "<span class='user'><b>#{user.username}</b> (#{role(user)})</span>"
  end
  
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

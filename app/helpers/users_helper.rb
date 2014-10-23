module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar = 
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def display_avatar(user, small = 'yes', options = {})
    if !user.avatar.url.nil? 
      if small 
        image_tag(user.avatar.ava.url.to_s, alt: user.name, class: "gravatar") 
      else
        image_tag(user.avatar.follow.url.to_s, alt: user.name, class: "gravatar") 
      end
    else 
      gravatar_for(user, options) 
     # link_to("http://gravatar.com/emails", "change")
    end  
  end
end

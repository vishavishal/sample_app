module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email) 
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    #https://source.unsplash.com/random/200x200?sig=1
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end

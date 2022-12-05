module ApplicationHelper
    def render_image(object)
      if object.avatar.attached?
        return image_tag(object.avatar, class: "rounded devise-img")
      else
        return image_tag("Profile.png", class: 'devise-img')
      end
    end
  
    def render_nav_image(object)
      if object.avatar.attached?
        return image_tag(object.avatar, class: 'rounded-circle nav-profile-icon')
      else
        return image_tag("Profile.png", class: 'nav-profile-icon')
      end
    end
  end
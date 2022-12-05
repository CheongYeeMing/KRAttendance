module CcaHelper
  def render_carousell_item(object)
    if object.avatars.attached?
      return image_tag(object.avatars[0], class: 'cca-img')
    else
      return image_tag("EatingBG.jpg", class:'cca-image')
    end
  end

  def render_item_image(item)
    return image_tag(item.avatar.attached? ? item.avatar : "Item.png", class: "rounded cca-item-user-image")
  end

  def render_reviewer_image(user)
    if user.avatar.attached?
      return image_tag(user.avatar, class: "rounded cca-review-user-image")
    else
      return image_tag("Profile.png", class: "cca-review-user-image")
    end
  end

  def render_cca_image(cca)
    if cca.avatars.present?
      return image_tag(cca.avatars[0], class:'cca-image')
    else
      return image_tag("EatingBG.jpg", class:'cca-image')
    end
  end
end

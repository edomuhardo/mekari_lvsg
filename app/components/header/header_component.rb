# app/components/header/header_component.rb
class HeaderComponent < MountainView::Presenter
  properties :logo, default: { src: '', alt: '' }
  property :menu, default: []

  def title
    properties[:title].titleize
  end

  def has_submenu?(navigation_item)
    navigation_item[:submenu_items].present?
  end
end
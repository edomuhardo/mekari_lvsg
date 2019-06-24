MountainView::Presenter::ViewContext.module_eval do
  def merge_html_options(component_options, html_options)
    return {} if component_options.blank?
    return component_options if html_options.blank?
    # append class instead of merging it
    result = component_options.merge(html_options) do |key, v1, v2|
      if key == :class
        v1 + ' ' + v2
      else
        v2
      end
    end
    result
  end
end

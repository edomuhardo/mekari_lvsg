require "slim-rails"
require "jquery-rails"
require "jquery-ui-rails"
require "mountain_view"
require "less/rails/semantic_ui"

module MekariLvsg
  class Engine < ::Rails::Engine
    isolate_namespace MekariLvsg

    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w(
        mekari_lvsg/mekari.css
        mekari_lvsg/mekari.js
        mekari_lvsg/theme.css
      )
      Rails.application.config.assets.paths << root.join("app", "assets", "images")
    end

    config.generators do |g|
      g.test_framework :rspec
      g.template_engine :slim
    end

    MountainView.configure do |c|
      c.components_path ||= root.join("app", "components")
      c.included_stylesheets = ["mekari_lvsg/theme.css"]
      c.extra_pages = [:grid, :buttons, :colors, :device_width]
    end

    initializer "mountain_view.load_component_classes",
                before: :set_autoload_paths do |app|
      component_paths = "#{MountainView.configuration.components_path}/{*}"
      app.config.autoload_paths += Dir[component_paths]
    end

    initializer "mountain_view.assets" do |app|
      Rails.application.config.assets.paths << MountainView.configuration.components_path
      Rails.application.config.assets.precompile += %w( mountain_view/styleguide.css
                                                        mountain_view/styleguide.js )
    end

    initializer "mountain_view.append_view_paths" do |app|
      ActiveSupport.on_load :action_controller do
        append_view_path MountainView.configuration.components_path
      end
    end

    initializer "mountain_view.add_helpers" do
      ActiveSupport.on_load :action_controller do
        ::ActionController::Base.helper MountainView::StyleguideHelper
        ::ActionController::Base.helper MountainView::ComponentHelper
      end
    end
  end
end

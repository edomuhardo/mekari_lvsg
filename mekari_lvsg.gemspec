$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "mekari_lvsg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "mekari_lvsg"
  spec.version     = MekariLvsg::VERSION
  spec.authors     = ["Edo Muhardo Syafri"]
  spec.email       = ["edo.muhardo@gmail.com"]
  spec.homepage    = "https://github.com/edomuhardo"
  spec.summary     = "Summary of MekariLvsg."
  spec.description = "Mekari living style guide."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency 'rails', '~> 5.2.3'
  spec.add_dependency 'autoprefixer-rails', '>= 9.6.0'
  spec.add_dependency 'font-awesome-less', '>= 4.7.0'
  spec.add_dependency 'jquery-rails', '>= 4.3.5'
  spec.add_dependency 'jquery-ui-rails', '>= 6.0.1'
  spec.add_dependency 'less-rails-semantic_ui', '>= 2.3.1'
  spec.add_dependency 'momentjs-rails', '>= 2.20.1'
  spec.add_dependency 'mountain_view', '>= 0.14.0'
  spec.add_dependency 'non-stupid-digest-assets', '>= 1.0.9'
  spec.add_dependency 'sass-rails', '>= 5.0.7'
  spec.add_dependency 'slim-rails', '>= 3.2.0'
  spec.add_dependency 'therubyracer', '>= 0.12.3'
  spec.add_development_dependency 'rspec-rails'

  spec.add_development_dependency "sqlite3"
end

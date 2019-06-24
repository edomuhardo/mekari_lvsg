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
  spec.description = "Description of MekariLvsg."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"
  spec.add_dependency 'autoprefixer-rails'
  spec.add_dependency 'font-awesome-less'
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'jquery-ui-rails'
  spec.add_dependency 'less-rails-semantic_ui'
  spec.add_dependency 'momentjs-rails'
  spec.add_dependency 'mountain_view'
  spec.add_dependency 'non-stupid-digest-assets'
  spec.add_dependency 'sass-rails'
  spec.add_dependency 'slim-rails'
  spec.add_dependency 'therubyracer'
  spec.add_development_dependency 'rspec-rails'

  spec.add_development_dependency "sqlite3"
end

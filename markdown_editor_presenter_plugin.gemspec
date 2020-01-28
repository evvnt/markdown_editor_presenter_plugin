lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "markdown_editor_presenter_plugin/version"

Gem::Specification.new do |spec|
  spec.name          = "markdown_editor_presenter_plugin"
  spec.version       = MarkdownEditorPresenterPlugin::VERSION
  spec.authors       = ["Derek Graham"]
  spec.email         = ["derek@geotix.com"]

  spec.summary       = %q{Provides a markdown based rich text editor component for use with Presenters gem.}
  spec.homepage      = 'http://github.com/mynorth/markdown_editor_presenter_plugin'
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end


lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "audioquiz/version"

Gem::Specification.new do |spec|
  spec.name          = "audioquiz"
  spec.version       = Audioquiz::VERSION
  spec.authors       = ["Luca Simone Gatta de Marinis"]
  spec.email         = ["loop23@gmail.com"]

  spec.summary       = %q{Ear training quizzes.}
  spec.homepage      = "http://github.com/loop23/audioquiz"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir.glob('lib/**/*.rb') +
               Dir.glob('ext/**/*.{c,h,rb}')

  spec.extensions = ['ext/audioquiz/extconf.rb']
  # spec.bindir        = "exe"
  # spec.executables   = ['audioquiz']
  spec.require_paths = ["lib", 'ext']

  spec.add_development_dependency "bundler", "~> 2.2.10"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency 'pry', '~> 0.12.2'

  spec.add_dependency "ffi-portaudio"
end

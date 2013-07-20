# -*- encoding: utf-8 -*-
require 'daedalus/version'

Gem::Specification.new do |gem|
  gem.name          = "daedalus-core"
  gem.version       = "#{Daedalus::VERSION}"
  gem.authors       = ["Brian Shirai"]
  gem.email         = ["brixen@gmail.com"]
  gem.homepage      = "https://github.com/rubinius/daedalus-core"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) unless File.extname(f) == ".bat" }.compact
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
  gem.summary       = <<-EOS
Daedalus is a build system extracted from Rubinius.
                      EOS
  gem.has_rdoc          = true
  gem.extra_rdoc_files  = %w[ README.md LICENSE ]
  gem.rubygems_version  = %q{1.3.5}

  gem.rdoc_options  << '--title' << 'Daedalus Gem' <<
                    '--main' << 'README' <<
                    '--line-numbers'

  gem.add_development_dependency "rake",   "~> 0.9"
  gem.add_development_dependency "rspec",  "~> 2.8"
end

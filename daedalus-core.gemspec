# -*- encoding: utf-8 -*-
require 'daedalus/version'

Gem::Specification.new do |gem|
  gem.name          = "daedalus-core"
  gem.version       = "#{Daedalus::VERSION}"
  gem.authors       = ["Brian Shirai"]
  gem.email         = ["brixen@gmail.com"]
  gem.homepage      = "https://github.com/rubinius/daedalus-core"
  gem.license       = "BSD"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) unless File.extname(f) == ".bat" }.compact
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
  gem.summary       = <<-EOS
Daedalus is a build system extracted from Rubinius. Almost no functionality has been implemented. This is very alpha.
                      EOS
  gem.description   = <<-EOD
Daedalus is a build system based on years of attempting to build Rubinus with a collection of Rake tasks. Rubinius is a complex system. It has dependencies on external C libraries (some of which are vendored), internal C/C++ libraries, Ruby C-extensions, and compiled Ruby code. The Rubinius bytecode compiler is written in Ruby, so we have to bootstrap compiling it.

Rake fails at this task because there is no way to manage multiple, independent dependency trees without subprocessing another Rake process. This results in unreasonable and unmanagable complexity.
                      EOD
  gem.has_rdoc          = true
  gem.extra_rdoc_files  = %w[ README.md LICENSE ]
  gem.rubygems_version  = %q{1.3.5}

  gem.rdoc_options  << '--title' << 'Daedalus Gem' <<
                    '--main' << 'README' <<
                    '--line-numbers'

  gem.add_development_dependency "rake",   "~> 0.9"
  gem.add_development_dependency "rspec",  "~> 2.8"
end

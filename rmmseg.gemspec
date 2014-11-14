lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |spec|
  spec.name = "rmmseg"
  spec.version = "10.2.9.2"
  spec.authors = ["pluskid,seoaqua,ChienliMa"]
  spec.email = ["pluskid@gmail.com,seoaqua@qq.com,maqianlie@gmail.com"]
  spec.summary = %q{rmmseg-cpp}
  spec.homepage = "http://github.com/elong/ppc"
  spec.license = "MIT"

  spec.bindir = 'bin'
  spec.executable = 'rmmseg'
  spec.files = Dir['lib/**/*.rb']+ Dir['lib/*.rb']+ Dir['bin/*']+ Dir['ext/**/*.c']+ Dir['lib/**/*.h']
  spec.require_paths = [ 'lib', 'ext', 'data' ]
  spec.extensions = Dir['ext/rmmseg/extconf.rb']

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
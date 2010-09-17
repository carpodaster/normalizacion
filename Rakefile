require "rubygems"
require "rake"
require "echoe"

 
Echoe.new('string_normalizr', '0.1') do |p|
  p.description    = "Let String instances be conviently normalized"
  p.url            = "http://github.com/carpodaster/string_normalizr"
  p.author         = "Carsten Zimmermann"
  p.email          = "carp@hacksocke.de"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

task :rebuild => [:manifest, :build_gemspec] do
end

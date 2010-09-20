require "rubygems"
require "rake"
require "echoe"

task :default => [:test, :rebuild]

Rake::TestTask.new("test") do |t|
  t.test_files = FileList['test/*_test.rb']
  t.verbose = false
end

Echoe.new('string_normalizr', '0.2') do |p|
  p.description    = "Let String instances be conviently normalized"
  p.url            = "http://github.com/carpodaster/string_normalizr"
  p.author         = "Carsten Zimmermann"
  p.email          = "carp@hacksocke.de"
  p.ignore_pattern = ["tmp/*", "script/*", "nbproject/*"]
  p.development_dependencies = []
end


task :rebuild => [:manifest, :build_gemspec, :gem] do
end

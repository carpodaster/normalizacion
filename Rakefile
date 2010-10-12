require "rubygems"
require "rake"
require "echoe"

task :default => [:test, :rebuild]

Rake::TestTask.new("test") do |t|
  t.test_files = FileList['test/*_test.rb']
  t.verbose = false
end

version = File.read("./VERSION")

Echoe.new('string_normalizr', version) do |p|
  p.description    = "Let String instances be conviently normalized"
  p.url            = "http://github.com/carpodaster/string_normalizr"
  p.author         = "Carsten Zimmermann"
  p.email          = "carp@hacksocke.de"
  p.ignore_pattern = ["tmp/*", "script/*", "nbproject/*", "nbproject/private/*"]
  p.development_dependencies = []
end


task :rebuild => [:manifest, :build_gemspec, :gem] do
end

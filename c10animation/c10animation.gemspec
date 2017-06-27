Gem::Specification.new do |gem|
  gem.name = "c10animation"
  gem.version = "0.0.1"
  gem.date = "2017-06-20"
  gem.summary = "Some Animations"
  gem.description = "Shows some animations of acsii art"
  gem.authors = ["GemNoob"]
  gem.email = "gemnoob@codefactoryacademy.com"
  gem.files = ["lib/c10animation.rb"] #This file is outside the lib folder and in the c10animation folder
  gem.homepage = "http://rubygems.org/gems/c10animation"
  gem.license ="MIT"
end



# gem build c10animation.gemspec
# gem install c10animation-0.0.1.gem

# in irb
# require 'c10animation'
# Available commands:
# Animation.side_to_side
# Animation.gymnastics

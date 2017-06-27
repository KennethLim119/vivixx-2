Gem::Specification.new do |gem|
  gem.name = "AutoCashier"
  gem.version = "0.0.1"
  gem.date = "2017-06-20"
  gem.summary = "Automated cashier"
  gem.description = "An automated cashier for a fruit stand."
  gem.authors = ["GemNoob"]
  gem.email = "gemnoob@codefactoryacademy.com"
  gem.files = ["lib/AutoCashier.rb"] #This file is outside the lib folder and in the AutoCashier folder
  gem.homepage = "http://rubygems.org/gems/autocashier"
  gem.license ="MIT"
end

# gem build (gem.name).gemspec
# gem install (gem.name)-(gem.version).gem

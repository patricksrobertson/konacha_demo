# A sample Guardfile
# More info at https://github.com/guard/guard#readme

### Guard::Konacha
#  available options:
#  - :spec_dir, defaults to 'spec/javascripts'
#  - :driver, defaults to :selenium
#
require 'capybara/poltergeist'

guard :konacha, driver: :poltergeist do
  watch(%r{^app/assets/javascripts/(.*)\.js(\.coffee)?$}) { |m| "#{m[1]}_spec.js" }
  watch(%r{^spec/javascripts/.+_spec(\.js|\.js\.coffee)$})
end

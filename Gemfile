source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

gem "rails", "~> 6.0.3", ">= 6.0.3.2"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "webpacker", "~> 5.0"
gem "turbolinks", "~> 5"
gem "bootsnap", ">= 1.4.2", require: false
gem "sidekiq"
gem "judoscale-ruby", github: "judoscale/judoscale-ruby", branch: "add-render-platform-support", glob: "judoscale-ruby/*.gemspec"
gem "judoscale-rails", github: "judoscale/judoscale-ruby", branch: "add-render-platform-support", glob: "judoscale-rails/*.gemspec"
gem "judoscale-sidekiq", github: "judoscale/judoscale-ruby", branch: "add-render-platform-support", glob: "judoscale-sidekiq/*.gemspec"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "standardrb"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

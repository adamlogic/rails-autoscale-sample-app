source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'rails_autoscale_agent'

case ENV['JOB_BACKEND']
when 'sidekiq'
  gem 'sidekiq'
when 'resque'
  gem 'resque'
when 'delayed-job'
  gem 'delayed_job_active_record'
  gem 'delayed-web'
when 'que'
  gem 'que', github: 'que-rb/que', branch: 'master'
  gem 'que-web'
else
  # JOB_BACKEND is unspecified or unsupported. We'll declare all possible gems,
  # but don't require them. This way a local `bundle install` installs everything.
  gem 'sidekiq', require: false
  gem 'resque', require: false
  gem 'delayed_job_active_record', require: false
  gem 'delayed-web', require: false
  gem 'que', github: 'que-rb/que', branch: 'master', require: false
  gem 'que-web', require: false
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

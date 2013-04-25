source 'https://rubygems.org'
gem 'rails', '3.2.11'

gem 'aws-s3'
gem 'airbrake'
gem 'bcrypt-ruby', :require => 'bcrypt'
gem 'carrierwave'
gem 'decent_exposure'
gem 'devise'
gem 'fabrication'
gem 'faker'
gem 'fog'
gem 'gem-open'
gem 'thin'
gem 'haml-rails'
gem 'jquery-rails'
gem 'jquery_datepicker'
gem 'pg'
gem 'spectator-validates_email', :require => 'validates_email'
gem 'validates_timeliness', '~> 3.0.2'
gem 'kaminari'
gem 'kaminari-bootstrap'
gem "tzinfo" # Timezone mannager 
gem 'hpricot'
gem 'ruby_parser'
gem 'hirb' # display like db rows should look -- In sc do 'Hirb.enable'-
gem 'resque', :require => "resque/server"
gem 'resque-scheduler', :require => 'resque_scheduler'
gem 'simple_form'
gem 'time_diff'
gem 'rabl' # for api calls
gem 'oj' # for api calls
gem 'spreewald'
gem 'numbers_and_words'
gem 'awesome_print'
gem 'gibbon' #MailChimp
gem 'twilio-ruby'

group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production, :staging do
  gem 'newrelic_rpm' # ab -kc 20 -t 60 http://on-call-architect-staging.herokuapp.com/---
end

gem "letter_opener", :group => :development
gem "meta_request", :group => :development
group :development, :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem "rspec-rails"
  gem 'debugger'
  gem 'annotate', '>=2.5.0.pre1' # annotate -p after
  gem 'populator'
  gem 'selenium'
  gem 'selenium-client'
  gem 'watir-webdriver'
  gem 'cucumber-rails-training-wheels'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'rails-erd' # Document your Rails 3 application with automatically generated model diagrams.  rake erd
  gem 'timecop', '0.3.5'
  gem 'email_spec'
  gem 'pry'
end


source 'https://rubygems.org'

gem 'foodcritic'
gem 'kitchen-sync'
gem 'dotenv'
gem 'serverspec'
gem "berkshelf"
gem 'kitchen-binding'

group :development do
  # The MurgaNikolay branch will compress cookbooks before upload, making converges much faster.  Hopefully it will be merged into master soon
  gem 'test-kitchen', :git => 'https://github.com/MurgaNikolay/test-kitchen.git'
end

group :plugins do
  # gem "kitchen-ec2"#, git: "git@github.com:test-kitchen/kitchen-ec2.git"
  gem "kitchen-vagrant"
  gem 'vagrant-berkshelf'
end

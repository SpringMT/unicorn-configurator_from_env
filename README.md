# Unicorn::ConfiguratorFromEnv

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'unicorn-configurator_from_env'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unicorn-configurator_from_env

## Usage
1. Require this module and call worker_processes.

```ruby
# In config/unicorn.rb

require 'unicorn/configurator_from_env'
worker_processes 1
```

2. Start Unicorn with env.

```sh
% UNICORN_WORKER_PROCESS_NUM=3 bundle exec unicorn
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/unicorn-configurator_from_env/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

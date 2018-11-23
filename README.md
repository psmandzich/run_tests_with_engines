# RunTestsWithEngines
Adds `with_engines_test` to rails command.

## Usage
```bash
rails with_engines_test
```

Shortcuts are available (further installation step required)
```bash
  rails test_all
  rails ta
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'run_tests_with_engines'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install run_tests_with_engines
```

### Applay shortcuts
To allow the usage of further shortcuts replace `require 'rails/commands'` by:

```ruby
# keep attention on rails upgarde
# to enable running tests with engines the "run_tests_with_engines" gem is used
CUSTOM_COMMANDS = Gem.loaded_specs['run_tests_with_engines'].full_gem_path
require (CUSTOM_COMMANDS + '/lib/rails/commands')
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

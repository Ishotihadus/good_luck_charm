# GoodLuckCharm

飛んでけ! 全力パワーで投げたメロディーに乗せて

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add good_luck_charm

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install good_luck_charm

## Usage

```rb
loop do
  (@charm ||= GoodLuckCharm.new).tondeke!
  if @charm.changed_per?(60)
    puts 'kana' # this statement is called only once in a minute) 
  end
  sleep 1 
end
````

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Ishotihadus/good_luck_charm.

**Note:** DogeAPI is [shutting down](http://www.dogeapi.com). For an alternative digital wallet API that supports Dogecoin, Litecoin, and Bitcoin, give [Block.io](https://block.io) a try. Their Ruby client is under development [here](https://github.com/BlockIo/gem-block-io).

# dogecoin

Ruby wrapper for the [DogeAPI](https://www.dogeapi.com). Send and receive Dogecoins. Currently very alpha, while the API is so beta. Such wow, regardless — with much amaze planned for the future.

## Installation

You can either `gem install dogecoin` or add `gem 'dogecoin'` to your Gemfile and `bundle` it, doge.

## Configuration

Most methods require an API key. Get yours — and many free coin! — [here](https://www.dogeapi.com). Configure like so, plz:
```ruby
    @shibe = DogeCoin::Client.new
    
    @shibe.configure do |config|
      config.api_key = 'YOUR_API_KEY'
    end
```
## Usage

Descriptions and examples of the supported actions are below.

- Returns the DOGE balance of your entire account to 8 decimal places.

```ruby
    @shibe.get_balance
```

- Withdraws `amount` doge to a `payment_address` you specify. For now, this must be more than 5 doge, and you must have enough extra in your wallet to pay all fees (another 1-3 doge).

```ruby
    @shibe.withdraw(amount, payment_address)
```

- Returns a new payment address for your account.

```ruby
    @shibe.get_new_address
```

You can also pass an optional alphanumeric `address_label` as a label for the address.

```ruby
    @shibe.get_new_address(address_label)
```

- Returns an array of all payment addresses/address IDs for your account.

```ruby
    @shibe.get_my_addresses
```

- Returns the current amount received to all addresses with `payment_address` or `address_label`.

```ruby
    @shibe.get_address_received(payment_address_or_address_label)
```

- Returns the payment address for the given `address_label`.

```ruby
    @shibe.get_address_by_label(address_label)
```

- Returns the current difficulty. This doesn't require an API key.

```ruby
    @shibe.get_difficulty
```

- Returns the current block. This doesn't require an API key.

```ruby
    @shibe.get_current_block
```

## Contributing to dogecoin
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 Rahul Horé. See LICENSE.txt for
further details.


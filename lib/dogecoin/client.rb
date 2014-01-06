require 'pry'
require 'json'
require 'dotenv'
require 'faraday'
require 'dogecoin/configuration'

Dotenv.load '../.env'

module DogeCoin
  class Client
    include DogeCoin::Configuration

    BASE_URL = 'https://dogeapi.com/wow/?'

    def initialize
      reset
      # do I initialize API key here?
    end

    def set_url_params(url, name, options)
    end

    #   HTTParty quick & dirty example
    #   response = HTTParty.get('http://twitter.com/statuses/public_timeline.json')
    #   puts response.body, response.code, response.message, response.headers.inspect
    

    ### Stubbed out API requests per DogeAPI documentation

    # Returns the DOGE balance of your entire account to 8 decimal places.
    def get_balance
      # /wow/?api_key={API_KEY}&a=get_balance
    end

    # Withdraws {AMOUNT} doge to a {PAYMENT_ADDRESS} you specify.
    # For now this must be more than 5 doge, and you must have enough extra in your wallet to pay all fees (another 1-3 doge).
    def withdraw
      # /wow/?api_key={API_KEY}&a=withdraw&amount={AMOUNT}&payment_address={PAYMENT_ADDRESS}
    end

    # Returns a new payment address for your account. You can pass an optional alphanumeric {ADDRESS_LABEL} as a label for the address.
    def get_new_address
      # /wow/?api_key={API_KEY}&a=get_new_address&address_label={ADDRESS_LABEL}
    end

    # Returns all payment addresses/address_ids for your account.
    def get_my_addresses
      # /wow/?api_key={API_KEY}&a=get_my_addresses
    end

    # Returns the current amount received to all addresses with {ADDRESS_LABEL} or {PAYMENT_ADDRESS}.
    def get_address_received
      # /wow/?api_key={API_KEY}&a=get_address_received&payment_address={PAYMENT_ADDRESS}
    end

    # Returns the payment address for the given {ADDRESS_LABEL}
    def get_address_by_label
      # /wow/?api_key={API_KEY}&a=get_address_by_label&address_label={ADDRESS_LABEL}
    end

    # Returns the current difficulty. This doesn't require an API key.
    def get_difficulty
      # /wow/?a=get_difficulty
    end

    # Returns the current block. This doesn't require an API key.
    def get_current_block
      # /wow/?a=get_current_block
    end

  end
end
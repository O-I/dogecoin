require 'pry'
require 'json'
require 'dotenv'
require 'faraday'
require 'dogecoin/configuration'

Dotenv.load '../.env'

module DogeCoin
  class Client
    include DogeCoin::Configuration
    include Faraday

    BASE_URL = "https://dogeapi.com/wow/?"

    def initialize
      reset
    end

    # Returns the DOGE balance of your entire account to 8 decimal places.
    def get_balance
      # /wow/?api_key={API_KEY}&a=get_balance
      Faraday.get("#{BASE_URL}api_key=#{api_key}&a=get_balance").body
    end

    # Withdraws {AMOUNT} doge to a {PAYMENT_ADDRESS} you specify.
    # For now this must be more than 5 doge, and you must have enough extra in your wallet to pay all fees (another 1-3 doge).
    def withdraw(amount, payment_address)
      # /wow/?api_key={API_KEY}&a=withdraw&amount={AMOUNT}&payment_address={PAYMENT_ADDRESS}
      Faraday.get("#{BASE_URL}api_key=#{api_key}&a=withdraw&amount=#{amount}&payment_address=#{payment_address}").body
    end

    # Returns a new payment address for your account. You can pass an optional alphanumeric {ADDRESS_LABEL} as a label for the address.
    def get_new_address(address_label = nil)
      # /wow/?api_key={API_KEY}&a=get_new_address&address_label={ADDRESS_LABEL}
      if address_label
        Faraday.get("#{BASE_URL}api_key=#{api_key}&a=get_new_address&address_label=#{address_label}").body
      else
        Faraday.get("#{BASE_URL}api_key=#{api_key}&a=get_new_address").body
      end
    end

    # Returns all payment addresses/address_ids for your account.
    def get_my_addresses
      # /wow/?api_key={API_KEY}&a=get_my_addresses
      Faraday.get("#{BASE_URL}api_key=#{api_key}&a=get_my_addresses").body
    end

    # Returns the current amount received to all addresses with {ADDRESS_LABEL} or {PAYMENT_ADDRESS}.
    def get_address_received(payment_address_or_address_label)
      # /wow/?api_key={API_KEY}&a=get_address_received&payment_address={PAYMENT_ADDRESS}
      Faraday.get("#{BASE_URL}api_key=#{api_key}&a=get_address_received&payment_address=#{payment_address_or_address_label}").body
    end

    # Returns the payment address for the given {ADDRESS_LABEL}
    def get_address_by_label(address_label)
      # /wow/?api_key={API_KEY}&a=get_address_by_label&address_label={ADDRESS_LABEL}
      Faraday.get("#{BASE_URL}api_key=#{api_key}&a=get__address_by_label&address_label=#{address_label}").body
    end

    # Returns the current difficulty. This doesn't require an API key.
    def get_difficulty
      # /wow/?a=get_difficulty
      Faraday.get("#{BASE_URL}&a=get_difficulty").body
    end

    # Returns the current block. This doesn't require an API key.
    def get_current_block
      # /wow/?a=get_current_block
      Faraday.get("#{BASE_URL}#&a=get_current_block").body
    end
  end
end
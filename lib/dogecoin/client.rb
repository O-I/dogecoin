require 'pry'
require 'json'
require 'dotenv'
require 'httparty'
require 'dogecoin/configuration'

Dotenv.load '../.env'

module DogeCoin
  class Client
    include DogeCoin::Configuration
    include HTTParty

    BASE_URL = 'https://dogeapi.com/wow/?'

    def initialize
      reset
    end
  end
end
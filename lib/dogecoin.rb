require 'dogecoin/client'

module DogeCoin
  class << self

    # Creates an alias for DogeCoin::Client.new
    def new
      @client ||= DogeCoin::Client.new
    end

    # Delegate to DogeCoin::Client
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private = false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
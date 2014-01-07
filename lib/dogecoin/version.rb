module DogeCoin
  module Version
    MAJOR = 0
    MINOR = 0
    PATCH = 1
    BUILD = 'alpha'

    class << self
      # @return [String]
      def to_s
        [MAJOR, MINOR, PATCH].join('.')+("-#{BUILD}" if BUILD).to_s
      end
    end
  end

  VERSION = Version.to_s
end
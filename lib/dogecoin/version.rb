module DogeCoin
  module Version
    MAJOR = 0
    MINOR = 0
    PATCH = 1
    BUILD = 'alpha'

    class << self
      # returns 'MAJOR.MINOR.PATCH'
      # or 'MAJOR.MINOR.PATCH-BUILD' if BUILD is not nil or ''
      def to_s
        [MAJOR, MINOR, PATCH].join('.')+("-#{BUILD}" unless BUILD.nil? || BUILD.empty?).to_s
      end
    end
  end

  VERSION = Version.to_s
end
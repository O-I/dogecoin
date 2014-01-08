module DogeCoin
  module Version
    MAJOR = 0
    MINOR = 0
    PATCH = 1
    BUILD = nil

    class << self
      # returns 'MAJOR.MINOR.PATCH'
      # or 'MAJOR.MINOR.PATCH.BUILD' if BUILD is not nil
      def to_s
        [MAJOR, MINOR, PATCH, BUILD].compact.join('.')
      end
    end
  end

  VERSION = Version.to_s
end
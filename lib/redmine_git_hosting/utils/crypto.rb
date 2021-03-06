require 'securerandom'

module RedmineGitHosting
  module Utils
    module Crypto
      extend self

      def generate_secret(length)
        length = length.to_i
        secret = SecureRandom.base64(length * 2)
        secret = secret.gsub %r{[=_\-+/]}, ''
        secret.split('').sample(length).join
      end
    end
  end
end

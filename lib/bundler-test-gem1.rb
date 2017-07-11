require 'bundler-test-gem1/does-things'
require 'utilities'

module BundlerTestGem1
  VERSION = '0.0.1'

  class BitCoin
    def self.mine
      Utilities::Electricity.consume
    end
  end
end

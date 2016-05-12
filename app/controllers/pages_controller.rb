class PagesController < ApplicationController
  def home
    @message = KewlCrypto.new("Hello Gems")
  end

  # Placement here of a class is an anti-pattern
  class KewlCrypto
    attr_reader :untouched

    def initialize(string)
      @untouched = string
    end

    def encrypted
      Base64.encode64(@untouched)
    end

    def decrypted
      Base64.decode64(@untouched)
    end
  end

end

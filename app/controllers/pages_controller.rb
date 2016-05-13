class PagesController < ApplicationController
  def home
    @message = KewlCrypto.new("Hello Gems")
  end
end

class PagesController < ApplicationController
  def home
    @untouched = "Hello Gems"
    @encrypted = encrypt(@untouched)
    @decrypted = decrypt(@encrypted)
  end

  def encrypt(string)
    Base64.encode64(string)
  end

  def decrypt(string)
    Base64.decode64(string)
  end
end

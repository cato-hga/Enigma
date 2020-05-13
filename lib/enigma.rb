require 'date'

class Enigma
  attr_reader :message, :key, :date, :encrypted_message, :character_set

  def initialize
    @character_set = ('a'..'z')
  end

  def encrypt(message, key, date)
    message = message.downcase
    key = rand(00000..99999).to_s
    date = "040895"
  end
end
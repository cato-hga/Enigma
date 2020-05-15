require 'date'
require 'pry'
require_relative 'offset'

class Enigma
  attr_reader :message, :key, :date, :encrypted_message, :character_set
  def initialize
    @alphabet = ('a'..'z').to_a << " "
  end

  def encrypt(message, key, date)
    message = message.downcase
    key =  key.nil? ? key.rand(00000..99999).to_s : key
    date = date.nil? ? Date.today.to_s : date
    @off_set = Offset.new(key, date)
    formatted_key = @off_set.format_key(key)
    formatted_date = @off_set.format_offset_date(date)
    combine = @off_set.combine
    chars_for_message = message.split(//)
    @chars_for_message_inds = chars_for_message.map { |c| @alphabet.index(c) }
    exchange_chars
    {
      encryption: @completed_encrypted_message,
      key: @off_set.key,
      date: @off_set.format_date
    }
  end

  def exchange_chars
    final_message = []
    @chars_for_message_inds.each_with_index do |char, index|
      move = @alphabet.rotate(@off_set.off_set_combo[index % 4])
      final_message.push move[char]
    end
    @completed_encrypted_message = final_message.join
  end
end
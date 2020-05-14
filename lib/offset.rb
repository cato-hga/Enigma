require 'date'
require 'pry'

class Offset
  attr_reader :key, :date

  def initialize(key, date)
    @key = key
    @date = date
  end

  def format_key(key)
    split_key_in_array = key.chars
    formatted_key = split_key_in_array.each_cons(2).map { |group| group.join.to_i }
  end

  def format_offset_date(date)
    format_date = Date.parse(date).strftime("%d%m%y")
    square_of_date = format_date.to_i * format_date.to_i
    last_four_digits = square_of_date.to_s.chars.last(4).map(&:to_i)
  end

  def combine(key, date)
    total = key.zip(date)
    total.map(&:sum)
  end
end
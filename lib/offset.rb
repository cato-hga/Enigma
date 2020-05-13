require 'date'

class Offset
  attr_reader :key, :date

  def format_key(key)
    split_key_in_array = key.chars
    split_by_two = split_key_in_array.each_cons(2).map { |group| group.join.to_i }
  end

  def offset_date(date)
    format_date = Date.parse(date).strftime("%d%m%y")
    square_of_date = format_date.to_i * format_date.to_i
    last_four_digits = square_of_date.to_s.chars.last(4).map(&:to_i)
  end
end
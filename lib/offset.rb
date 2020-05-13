class Offset
  attr_reader :key, :date

  def format_key(key)
    split_key_in_array = key.chars
    split_by_two = split_key_in_array.each_cons(2).map { |group| group.join.to_i }
  end
end
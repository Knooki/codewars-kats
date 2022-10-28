# frozen_string_literal: true

NUMBERS = %w[zero one two three four five six seven eight nine].freeze

OPERATIONS = {
  "plus": '+',
  "minus": '-',
  "times": '*',
  "divided_by": '/'
}.freeze

NUMBERS.each_with_index do |number, num|
  define_method(number.to_sym) { |operation = nil| operation ? operation.call(num) : num }
end

OPERATIONS.each do |word, operation|
  define_method(word.to_sym) { |number| proc { |x| x.send(operation, number) } }
end

# frozen_string_literal: true

# Изначальное решение

# @given_text = @given_text.gsub(/[^A-Za-z0-9\r\s.\n]/, '').split("\n").reject{|x| x.strip == ""}
# expenses = b.map{|x| x.rpartition(" ")[-1].to_f}
# b.map!{|x| x.rpartition(" ")[0..1].join}.shift
# balance, tmp_balance, expenses = expenses[0], expenses[0], expenses[1..-1]
# remainded_balances = expenses.map{|x| x = tmp_balance -= x}
# result = "Original Balance: " + "%.2f" % balance + "\r\n"
# result += @given_text.map.with_index{|x, i| x + "%.2f"% expenses[i] + " Balance " + "%.2f"%remainded_balances[i] + "\r\n"}.join
# result += "Total expense  " + "%.2f" % expenses.sum + "\r\nAverage expense  " + "%.2f" % (expenses.sum/expenses.size)

class EasyBalanceChecking
  attr_reader :given_text

  def initialize(given_text)
    @given_text = given_text
  end

  def call
    @given_text = @given_text.gsub(/[^A-Za-z0-9\r\s.\n]/, '').split("\n").reject { |x| x.strip == '' }
    expenses = @given_text.map { |x| x.rpartition(' ')[-1].to_f }
    @given_text.map! { |x| x.rpartition(' ')[0..1].join }.shift
    balance = expenses[0]
    tmp_balance = expenses[0]
    expenses = expenses[1..]
    remainded_balances = expenses.map { |x| x = tmp_balance -= x }
    result = "Original Balance: #{'%.2f' % balance}\r\n"
    result += @given_text.map.with_index do |x, i|
      x + "#{'%.2f' % expenses[i]} Balance #{'%.2f' % remainded_balances[i]}\r\n"
    end.join

    result += 'Total expense  %.2f' % expenses.sum + format("\r\nAverage expense  %.2f", (expenses.sum / expenses.size))
  end
end

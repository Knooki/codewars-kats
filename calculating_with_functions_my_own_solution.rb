# frozen_string_literal: true

class CalculatingWithFunctionsMyOwnSolution
  def zero(proc = nil)
    proc.nil? ? 0 : proc.call(0)
  end

  def one(proc = nil)
    proc.nil? ? 1 : proc.call(1)
  end

  def two(proc = nil)
    proc.nil? ? 2 : proc.call(2)
  end

  def three(proc = nil)
    proc.nil? ? 3 : proc.call(3)
  end

  def four(proc = nil)
    proc.nil? ? 4 : proc.call(4)
  end

  def five(proc = nil)
    proc.nil? ? 5 : proc.call(5)
  end

  def six(proc = nil)
    proc.nil? ? 6 : proc.call(6)
  end

  def seven(proc = nil)
    proc.nil? ? 7 : proc.call(7)
  end

  def eight(proc = nil)
    proc.nil? ? 8 : proc.call(8)
  end

  def nine(proc = nil)
    proc.nil? ? 9 : proc.call(9)
  end

  def plus(number)
    proc { |x| x + number }
  end

  def minus(number)
    proc { |x| x - number }
  end

  def times(number)
    proc { |x| x * number }
  end

  def divided_by(number)
    proc { |x| x / number }
  end
end

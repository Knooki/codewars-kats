class Solution
class

  attr_reader:str

  def initialize(str)
    @str = str
  end

  def call()
    str.each_char{ |item| return false if str.count(item) > 1 }
    true
  end
end

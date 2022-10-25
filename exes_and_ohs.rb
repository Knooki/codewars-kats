class Solution

  attr_reader:str
  
  def initialize(str)
    @str = str
  end

  def call()
    @str.downcase.count('x') == @str.downcase.count('o')? true : false
  end
end

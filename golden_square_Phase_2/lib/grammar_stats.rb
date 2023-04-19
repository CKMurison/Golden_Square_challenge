class GrammarStats
  def initialize
    
  end

  def check(text)
  fail "Not a sentence." if text.empty?
    if text[0] != text[0].upcase && text[-1] != "."
      return false
    else
      return true
    end
  end

  def percentage_good
    return 0 
    return 100

    

    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end
class GrammarStats
  def initialize
    @pass_counter = 0
    @fail_counter = 0
    @total_counter = 0
  end

  def check(text)
  fail "Not a sentence." if text.empty?
  @total_counter += 1
    if text[0] != text[0].upcase && text[-1] != "."
      @fail_counter += 1
       false
    else
      @pass_counter += 1
       true
    end
  end

  def percentage_good
    #value / total_value * 100 
    if @pass_counter == 0 && @fail_counter > 0 
      return 0
    elsif @fail_counter == 0 && @pass_counter > 0 
      return 100
    else
      ((@pass_counter.to_f / @total_counter.to_f) * 100)
    end
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end
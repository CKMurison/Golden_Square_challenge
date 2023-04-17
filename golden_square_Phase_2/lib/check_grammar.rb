def check_grammar(text)
  fail "Not a sentence." if text.empty?
  if text[0] != text[0].upcase && text[-1] != "."
    return false
  else
    return true
  end
end
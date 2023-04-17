def check_string(text)
 fail "This is not a sentence" if text.empty?
  if text.include? "#TODO"
    return true
  else 
    return false
  end
end
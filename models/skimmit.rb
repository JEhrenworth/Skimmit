# -- MVP -- #
# Input text
# Highlights the important stuff
# A paragraph about our mission statement

# Return all numbers, months 
# Return all captitalized words unless they are two characters after a period 
# Return first sentence of every paragraph

# Using methods

# Get the input
# Find all numbers
# Find all months
# Find all capitalized words
# Join them together so it gets one string as the returned result

# Feature -- find first sentence of every paragraph

# Iterate through b and check if
class String
  def is_integer?
    self.to_i.to_s == self
  end
end

def highlight(input)
  split_by_paragraph = input.split(/\r?\n/)
  
  full_text = ""
  split_by_paragraph.each do |sub_array| 
    if sub_array == ""
      full_text += "<br> <br>"
    else 
      full_text += highlight_text(sub_array)
    end
  end
  full_text
end

def highlight_text(input)
  important_words = find_important_words(input).to_a
  
  all_text = ""
  
  $array_of_input.each do |word| 
    if important_words.include?(word) 
      all_text += "<span style='color:blue'>" + word + " " + "</span>"
    else 
      all_text += word + " "
    end  
  end
  
  all_text
  
end

def find_important_words(input)
  
  $array_of_input = input.to_s.split(" ")
  
  # Change out the punctuation and run the tests to see if it is an important word
  # Put back in the punctiation after determination
  
  capitilized_words = input.scan(/[A-Z][\w-]*/)
  
  capitilized_words = capitilized_words.join(" ")
  
  numbers = []
  
  $array_of_input.each do |word| if word.is_integer? then numbers << word end end
  
  important_words = []
  
  important_words << numbers << capitilized_words.split(" ")
  
  important_words.flatten(1).uniq
  
end

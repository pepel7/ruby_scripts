# second attempt with scan method

def substrings2(str, dictionary)
  result = Hash.new
  downcased_str = str.downcase
  
  dictionary.each do |word|
    matches = downcased_str.scan(word).length
    output_hash[word] = matches unless matches == 0
  end

  result
end

p substrings2("Howdy partner, sit down! How's it going?", dictionary)
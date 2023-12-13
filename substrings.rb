dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
  hash = str.downcase.split.reduce(Hash.new) do |output_hash, word|
    dict.each do |dict_word|
      if output_hash[dict_word] == nil
        output_hash[dict_word] = 0
      end

      if word =~ /#{dict_word}/
        output_hash[dict_word] += 1
      end
    end
    output_hash
  end
  hash.filter { |key, value| value != 0 }
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
require 'pry'

def substrings(string, dictionary)
    #iterate through array searching for substring
    #split up string into words
    string_array = string.split()
    #return hash with each substring(key) found in dictionary with number of times found(value)
    dictionary.reduce(Hash.new(0)) do |hash, sub|
        string_array.each do |word|
            word = word.downcase
            if word.include?(sub)
                #create new hash pair or update existing
                hash[sub] += 1 
                hash
            end
        end
        hash
    end
    # binding.pry
end

dictionary = ["below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p "Please enter a string."
user_string = gets.chomp

def substrings(words, sub_string_list) #=> find matches of each word from user_string to the dictionary
    word_count = Hash.new
    arr_words = []
    arr_words = words.split(/\W+/) #=> Removes punctuations and puts each word into an array
    arr_words = arr_words.each do |word|
        down_word = word.downcase
        if sub_string_list.include? (down_word) #=> Adds the word and increments the count if a word is located in the substring list
            if word_count.has_key?(down_word)
                word_count[down_word] += 1
            else
                word_count[down_word] = 1
            end
        end
    end
    p word_count
end

substrings(user_string, dictionary)
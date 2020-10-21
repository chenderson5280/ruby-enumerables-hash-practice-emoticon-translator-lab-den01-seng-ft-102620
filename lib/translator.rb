
require "pry"
require "yaml"

def load_library(file)
  result = {}
  file = YAML.load_file(file)
  file.each do |inner_key, inner_array|
    result[inner_key] = {:english => inner_array[0], :japanese => inner_array[1]}
  end
result
end

def get_japanese_emoticon (file,emote)
  list_of_emote = load_library(file)
#result1 = load_library(YAML.load_file('lib/emoticons.yml')
  list_of_emote.each do |key,value|

      if value[:english] == emote
        #binding.pry
         return value[:japanese]
      
         
      end

    end
"Sorry, that emoticon was not found"
end


 #result1 = YAML.load_file('lib/emoticons.yml')
 #result1.each do |key, value|
#if value[0] == emote
  # return value[1]
#else
  # "Sorry, that emoticon was not found"
#end
#end
#end


def get_english_meaning (result2,emote)
  result2 = YAML.load_file('lib/emoticons.yml')
result2.each do |key1, value1|
if value1[1] == emote
   return key1
end
end
end

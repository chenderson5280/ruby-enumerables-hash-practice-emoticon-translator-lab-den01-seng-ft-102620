
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
  list_of_emote.each do |key,value|
      if value[:english] == emote
        return value[:japanese]
      end
    end
"Sorry, that emoticon was not found"
end

def get_english_meaning (file,emote)
  list_of_emote = load_library(file)
list_of_emote.each do |key1, value1|
if value1[:japanese] == emote
   return key1
end
end
"Sorry, that emoticon was not found"
end

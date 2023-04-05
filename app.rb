def decode_char(code_character)
  code = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
          '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.', '--.-',
          '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..']
  word = %w[A B C D E F G H I J K L M N O P Q R S T U V
            W X Y Z]
  index = code.find_index(code_character)
  word[index]
end

def decode_word(code_word)
  word_splited = code_word.split
  word_array = word_splited.map do |word|
    if word == '/'
      ' '
    else
      decode_char(word)
    end
  end
  word_array.join
end

def decode(code_sentence)
  sentence_splited = code_sentence.split('   ')
  sentence_array = sentence_splited.map do |word|
    decode_word(word)
  end
  sentence_array.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

# Bi Yi Huang


#Create and the fill the 5x5 Playfair grid (Treating all occurences of J as I)
def create_grid(key)
    alphabet = "ABCDEFGHIKLMNOPQRSTUVWXYZ"
    key = key.upcase.gsub("J", "I").chars.uniq.join + alphabet
    key = key.chars.uniq.join
   
    grid = key.chars.each_slice(5).to_a
    return grid
   end
   
   #Pre-process the encrypted message
   def pre_process(message)
    message = message.upcase.gsub("J", "I").chars.each_slice(2).to_a
   
    pairs = []
    i = 0
   
    while i < message.length
    #Last character - Insert X
    if i == message.length-1
    pairs << [message[i], "X"]
    break
    end
   
    #If the two characters are the same, insert X 
    if message[i] == message[i+1]
    pairs << [message[i], "X"]
    i += 1
    
    #If the two characters are different, insert both characters
    else
    pairs << [message[i], message[i+1]]
    i+=2
    end
    end
    pairs
   end
   
   #Define
   
   
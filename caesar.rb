
puts "Enter a word or phrase"
string = gets.chomp
puts "Enter a number"
shift = gets.chomp.to_i



def caesar(string, shift)
    changed_string = ''
    string.each_char do |char| 
        if char =~ /[a-z]/
            changed_string += ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
        elsif char =~ /[A-Z]/
            changed_string += ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
        else
            changed_string += char
        end
    end
    changed_string
end

encryption = caesar(string, shift)
puts "Here is your encrypted word or phrase: #{encryption}"
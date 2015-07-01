NATO = {
             'A' => 'ALPHA',
             'B' => 'BRAVO',
             'C' => 'CHARLIE',
             'D' => 'DELTA',
             'E' => 'ECHO',
             'F' => 'FOXTROT',
             'G' => 'GOLF',
             'H' => 'HOTEL',
             'I' => 'INDIA',
             'J' => 'JULIET',
             'K' => 'KILO',
             'L' => 'LIMA',
             'M' => 'MIKE',
             'N' => 'NOVEMBER',
             'O' => 'OSCAR',
             'P' => 'PAPA',
             'Q' => 'QUEBEC',
             'R' => 'ROMEO',
             'S' => 'SIERRA',
             'T' => 'TANGO',
             'U' => 'UNIFORM',
             'V' => 'VICTOR',
             'W' => 'WHISKEY',
             'X' => 'XRAY',
             'Y' => 'YANKEE',
             'Z' => 'ZULU'
             }


ALPHA = {
             'ALPHA' => 'A',
             'BRAVO' => 'B',
             'CHARLIE' => 'C',
             'DELTA' => 'D',
             'ECHO' => 'E',
             'FOXTROT' => 'F',
             'GOLF' => 'G',
             'HOTEL' => 'H',
             'INDIA' => 'I',
             'JULIET' => 'J',
             'KILO' => 'K',
             'LIMA' => 'L',
             'MIKE' => 'M',
             'NOVEMBER' => 'N',
             'OSCAR' => 'O',
             'PAPA' => 'P',
             'QUEBEC' => 'Q',
             'ROMEO' => 'R',
             'SIERRA' => 'S',
             'TANGO' => 'T',
             'UNIFORM' => 'U',
             'VICTOR' => 'V',
             'WHISKEY' => 'W',
             'XRAY' => 'X',
             'YANKEE' => 'Y',
             'ZULU' => 'Z'
             }


def encrypt str
      str.each_char do |c|
            chars = c.upcase.split(" ")
            chars.each do |x|
                  chars = NATO[x]
                  chars = chars.split(" ")
                  chars = chars.join + " "
                  print chars.downcase.capitalize
            end
      end
end

def decrypt str
      words = str.upcase.split(" ")
            words.each do |w|
                  words = ALPHA[w]
                  words = words.downcase
                  print words
      end
end

encrypt "dog"

decrypt "delta OSCAR GOLF"


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
            print NATO.key(w)
      end
end

encrypt("dog")
decrypt "delta OSCAR GOLF"

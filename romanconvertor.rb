def fromRoman(romanNumber)
    validLetters = ["M","D","C","L","X","V","I"]
    for i in romanNumber.chars
      if !validLetters.include? i
        raise TypeError
      end
    number = 0
    number +=romanNumber.count("M") + 1000
    number +=romanNumber.count("D") + 500
    number +=romanNumber.count("C") + 100
    number +=romanNumber.count("L") + 50
    number +=romanNumber.count("X") + 10
    number +=romanNumber.count("V") + 5
    number +=romanNumber.count("I") + 1
    number.sub "CM", "DCCC"
    number.sub "CD", "CCCC"
    number.sub "XC", "LXXXX"
    number.sub "XL", "XXXX"
    number.sub "IX", "VIIII"
    number.sub "IV", "IIII"
end

def toRoman(arabicNumber)
  if arabicNumber < 1 or arabicNumber > 3999
     	raise RangeError
     end

  roman = ""
  if arabicNumber >= 1000
    result + "M"
    toRoman(arabicNumber - 1000)
  end
  if arabicNumber >= 900
    result + "CM"
    toRoman(arabicNumber - 900)
  end
  if arabicNumber >= 500
    result + "D"
    toRoman(arabicNumber - 500)
  end
  if arabicNumber >= 400
    result + "CD"
    toRoman(arabicNumber - 400)
  end
  if arabicNumber >= 100
    result + "C"
    toRoman(arabicNumber - 100)
  end
  if arabicNumber >= 90
    result + "XC"
    toRoman(arabicNumber - 90)
  end
  if arabicNumber >= 50
    result + "L"
    toRoman(arabicNumber - 50)
  end
  if arabicNumber >= 40
    result + "XL"
    toRoman(arabicNumber - 40)
  end
  if arabicNumber >= 10
    result + "X"
    toRoman(arabicNumber - 10)
  end
  if arabicNumber >= 9
    result + "IX"
    toRoman(arabicNumber - 9)
  end
  if arabicNumber >= 5
    result + "V"
    toRoman(arabicNumber - 5)
  end
  if arabicNumber >= 4
    result + "IV"
    toRoman(arabicNumber - 4)
  end
  if arabicNumber >= 1
    result + "I"
    toRoman(arabicNumber - 1)
  end

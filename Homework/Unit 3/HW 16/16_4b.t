var input : string

procedure convertAndOutputCapital
  for currentCharacter : 1 .. length (input) by 1
    if ord(input (currentCharacter)) >= 97 and ord(input (currentCharacter)) <= 122 then
      put chr (ord(input (currentCharacter)) - 32)..
    else
      put input (currentCharacter)..
    end if
  end for
end convertAndOutputCapital

get input:*
convertAndOutputCapital

var response : string
loop
    put "Please answer 'yes' to exit the program"
    get response : *
    response :=  Str.Lower(response)
    exit when response = "yes"
    put "You must type the full word in lower case letters."
    put "Please try again"
end loop
put "Thank you for using the program!"

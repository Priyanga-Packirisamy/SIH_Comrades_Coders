uname = gets
Password = gets
dc = uname.scan(/[0-9]/).length
if dc == 12
  puts "username : #{uname}"
else
  puts "Enter valid aadhaar no"
end
if Password.length >= 9 && Password.length <=13
    uc = Password.scan(/[A-Z]/).length
    lc = Password.scan(/[a-z]/).length
    dc = Password.scan(/[0-9]/).length
    sc = Password.scan(/["+", "-", "&", "|", "!", "(", ")", "{", "}", "[", "]", "^","~", "*", "?", ":","@","~","#","$","%","*","_","=","\","<",">"]/).length
   
    if sc>=1 && dc>=1 && lc>=1 && uc>=1
        puts "Strong password"
        puts "Password : #{Password}"
    else
        puts "Invalid password"
        if sc<1 && dc<1 && lc<1 && uc<1
            puts "Password should have atleast 1 symbol,1 number,1 lowercase alphabet and 1 uppercase alphabet"
        elsif sc<1 && dc<1 && lc<1  
            puts "Password should have atleast 1 symbol,1 number and 1 lowercase alphabet"
        elsif sc<1 && dc<1 && uc<1
            puts "Password should have atleast 1 symbol,1 number and 1 uppercase alphabet"
        elsif sc<1  && lc<1 && uc<1
            puts "Password should have atleast 1 symbol,1 lowercase alphabet and 1 uppercase alphabet"
        elsif dc<1 && lc<1 && uc<1
            puts "Password should have atleast 1 number,1 lowercase alphabet and 1 uppercase alphabet"
        elsif sc<1 && dc<1
            puts "Password should have atleast 1 symbol and 1 number"
        elsif sc<1  && lc<1
            puts "Password should have atleast 1 symbol and 1 lowercase alphabet"
        elsif  dc<1 && lc<1
            puts "Password should have atleast 1 number and 1 lowercase alphabet"
        elsif sc<1 &&  uc<1
            puts "Password should have atleast 1 symbol and 1 uppercase alphabet"
        elsif  dc<1 && uc<1
            puts "Password should have atleast 1 number and 1 uppercase alphabet"
        elsif lc<1 && uc<1
            puts "Password should have atleast 1 lowercase alphabet and 1 uppercase alphabet"
        elsif sc<1
            puts "Password should have atleast 1 symbol"
        elsif  dc<1
            puts "Password should have atleast 1 number "
        elsif lc<1  
            puts "Passord should have atleast 1 lowercase alphabet"
        elsif uc<1
            puts "Password should have atleast 1 uppercase alphabet"
        end
    end
else
    puts "Retype password of greater than 8 characters and less than 12 characters"
end

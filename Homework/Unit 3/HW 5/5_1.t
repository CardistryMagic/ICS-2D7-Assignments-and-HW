% Student Name: Devdigvijay Singh
% Teacher Name: Ms. Xie
% Date: Nov 4, 2016
% Program: 5_1.t
% Version: 1
% Description: Displays the feeling of an inputted temperature.

%declaration
loop
    var temperatureInput : real

%input from user
    put "Enter the temperature in Celsuis."
    get temperatureInput

    %process/output
    if temperatureInput < 20 then
	if temperatureInput < 10 then
	    if temperatureInput < 0 then
		if temperatureInput < -18 then
		    put "very cold"
		else
		    put "cold"
		end if
	    else
		if temperatureInput = 0 then
		    put "very cool\nfreezing point of water"
		else
		    put "very cool"
		end if
	    end if
	else
	    put "moderate"
	end if
    else
	if temperatureInput >= 30 then
	    if temperatureInput >= 40 then
		if temperatureInput >= 50 then
		    if temperatureInput >= 100 then
			put "boiling point of water"
		    end if
		else
		    put "extremely hot"
		end if
	    else
		put "hot"
	    end if
	else
	    put "warm"
	end if
    end if
end loop

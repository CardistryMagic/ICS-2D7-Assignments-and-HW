% TO PLAY MUSIC NOTES:
%
%   play(music : string)
% 
% Where: music is a string of characters that specify notes, 
%        rests, sharps, flats and duration. The notes are the letters
%        a to g (or A to G). A rest is p (for pause). A sharp is + 
%        and a flat is -. The durations are 1 (whole note), 2 (half note), 
%        4 (quarter note), 8 (eight note) and 6 (sixteenth note). 
%        The character > raises to the next octave and < lowers. 
%        Blanks can be used for readability and are ignored by play.

% Play quickly (eighth notes)
play ("8cdefgab>c")
play ("<bagfedc")

% Now play slower (half notes)
play ("2cdefgab>c")
play ("<bagfedc")

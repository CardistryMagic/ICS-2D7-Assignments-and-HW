% TO PLAY A SOUND:
%
%   sound(frequency : int, duration: int)
%
% Where: frequency is the sound to play(in Hertz)
%        duration is how long to play it for (in milliseconds) 

var user_key : string(1)

for i : 1 .. 10
    put i
    sound (100* i, 500)            % Sound note for 1/2 second
end for


put "Press a key to continue..."
getch(user_key)
sound (50, 500)


% TO PLAY A MUSIC FILE (MP3,WAV etc..):
%
%   Music.PlayFile(filename: string)
%
% Where: filename is the full path to the music file.
%
% Note: Double slashes are required! 

Music.PlayFile ("WindBeneath.mp3")

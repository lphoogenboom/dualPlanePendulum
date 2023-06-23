%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Crane: RT blocks paramaters, I/O conversions
% Adapted on 20-01-2011 by Mernout Burger
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h = 0.01;

% Values for the angle sensors, and the joystick input
%                       [angle  -angle  joy_y   joy_x]
adinchannels =          [ 1      2       3       4    ]; % input channel
adinoffs =              [ 0.011  0.075  -0.013   0.005]; % input offset for angle and joystick 
adingain =              [-0.851 -0.851   1       1    ]; % input gain (machine units -> degree)
% adingain =              [4.6154e+04 -1   1       1    ]; % input gain (machine units -> degree) 

% Values for the angular sensors
% Cube 1
% sensors
    % 56.5486
    % 57.6335
%                       [ link1   link2  ]
adinchannelsencoders =  [ 1       2      ]; % sensor channels (after bouncing)
adinoffsencoders =      [ 0       0      ]; % unscaled bias (depricated: relative sensor)         
adingainencoders =      [56.5486  57.6335]; % Sensor gain for angle scaling

% Cube 1
% sensors
    % 56.5486
    % 57.6335

% no change
dinchannels = [17:19];                                   % input channel [left right top]
% dinchannels = [1:2];

daoutchannels = [1 2];                                   % output channel [trolley hoist]
daoutoffs = [-1e-4 -2e-3];                               % output offset  [trolley hoist]
daoutgain = [0.8 2.5];                                   % output gain    [trolley hoist]
% daoutgain = 90*[4.6154e4 4.6154e4]; 
ticklost = 100;                                          % max number of ticks lost

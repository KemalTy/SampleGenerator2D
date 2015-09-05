% pinPointGUI.m
%
% Creates point data from user inputs
%
% Kemal Tugrul Yesilbek

function [ nodePoints ] = unlabeledPinPointGUI()

%% Open up GUI
% Mouse positions will come from global variables workspace
global mousePosX;
global mousePosY;

% Record the points for all frames
%[ X , Y ]
nodePoints = [0 0];

% open up a new figure for new frame
close;
figure; hold on;
set (gcf, 'WindowButtonMotionFcn', @mouseMove)
axis([0 100 0 100]);

% Collect the points
clickNo = 1;
while(true)
    title('Pinpoint the data...');
    k = waitforbuttonpress;
    
    % If that was a keypress.. end the collection...
    if(k == 1)
        break;
    end
    
    nodePoints(clickNo, 1) = mousePosX;
    nodePoints(clickNo, 2) = mousePosY;
      
    plot( nodePoints(clickNo,1), nodePoints(clickNo, 2) , 'r*');
    
    clickNo = clickNo + 1;
end



%% Close the program
close all;

end


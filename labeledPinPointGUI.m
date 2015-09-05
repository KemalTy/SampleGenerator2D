% labeledPinPointGUI.m
%
% Creates point data from user inputs
%
% Kemal Tugrul Yesilbek

function [ nodePoints, nodeLabels ] = labeledPinPointGUI(classNo)

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
for labelNo = 1:classNo
    r = (1-0).*rand(3,1) + 0;
    while(true)
        title(['Pinpoint the data for class: ' num2str(labelNo)]);
        k = waitforbuttonpress;
        
        % If that was a keypress.. switch to next cluster...
        if(k == 1)
            labelNo = labelNo + 1;
            break;
        end
        
        nodePoints(clickNo, 1) = mousePosX;
        nodePoints(clickNo, 2) = mousePosY;
        nodeLabels(clickNo) = labelNo;
        
        plot( nodePoints(clickNo,1), nodePoints(clickNo, 2) , 'color',r,'marker','*');
        
        clickNo = clickNo + 1;
    end
end



%% Close the program
close all;

end


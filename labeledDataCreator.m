% labeledDataCreator.m
%
% Creates point data from user inputs
%
% Kemal Tugrul Yesilbek

%% Initialize
clear all;
close all;
clc;
workspace;

%% Ask class num from user
classAns = inputdlg('Enter the class no:','Class number', [1 50]);
classNo = str2num(classAns{:}); 

%% Show message
msgbox('Please click onto the figure to pinpoint the data points. Press a key to switch to next class...');

%% Create unlabeled data
[data,labels] = labeledPinPointGUI(classNo);

%% Save the unlabeled data
% Ask for the file name
fileName = inputdlg('Enter the data file name with its type:', 'File Name', [1 50]);

% Save the data
save(fileName{:},'data');
save([fileName{:} '_Labels'],'labels');
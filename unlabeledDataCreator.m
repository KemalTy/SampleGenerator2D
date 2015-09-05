% unlabeledDataCreator.m
%
% Creates point data from user inputs
%
% Kemal Tugrul Yesilbek

%% Initialize
clear all;
close all;
clc;
workspace;


%% Show message
msgbox('Please click onto the figure to pinpoint the data points. Press a key to switch to end collection...');

%% Create unlabeled data
data = unlabeledPinPointGUI();

%% Save the unlabeled data
% Ask for the file name
fileName = inputdlg('Enter the data file name with its type:', 'File Name', [1 50]);

% Save the data
save(fileName{:},'data');
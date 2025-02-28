% Example
clear; clc;

%%% INPUTS %%%
filepath = 'TEST.segd';
verb = 'false'; % Do you want to print channel information.
descale = 0.000269; % Used to convert raw data to millivolts. Find this value using TraceView application.
sensitivity = 452; % Used to convert mV to acceleration.
%%%%%%%%%%%%%%%%%

%%% OUTPUTS %%%
% data_raw = Raw trace for each instrument.
% data_mV = trace for each instrument in milliVolts.
% time = time vector to accompany data.
% year = start-time year
% julday = start-time julday
% hour = start-time hour
% minute = start-time minute
% second = start-time second
% frequency = sampling frequnecy;
% serialNo = serial number of instruments, corresponding to each trace in data.
%%%%%%%%%%%%%%%%%


%%%%%% CODE %%%%%%
% Read data
[data_raw, time, year, julday, hour, minute, second, frequency, serialNo]=sercel_SEGD2_reader(filepath,'verbose',verb);

% Convert raw data to milliVolts
data_mV = descale * data_raw;
data_acc = data_mV/sensitivity;
%%%%%%%%%%%%%%%%%%

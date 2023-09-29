function param = getSubjParam_AnnaVidi1(pp)

%% participant-specific notes

%% set path and pp-specific file locations
unique_numbers = [54, 95, 84, 70, 28, 43, 81, 68, 61, 60, 27, 71, 26, 57, 91, 34, 77, 25, 15, 93, 31, 51, 79, 89, 35, 48, 55, 87, 24, 44, 20, 10, 38, 21, 72, 47, 32, 42, 96, 37, 76]; %needs to be in the right order

param.path = 'C:\Users\annav\Documents\Jottacloud\Neuroscience PhD\Experiments\Vidi experiments\Data\Vidi1&2 - null-cue gaze-bias\';

if pp < 10
    param.subjName = sprintf('pp0%d', pp);
else
    param.subjName = sprintf('pp%d', pp);
end

log_string = sprintf('data_session_%d.csv', pp);
param.log = [param.path, log_string];

eds_string = sprintf('%d_%d.asc', pp, unique_numbers(pp));
param.eds = [param.path, eds_string];
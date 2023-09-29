function param = getSubjParam_AnnaVidi1(pp)

%% participant-specific notes

%% set path and pp-specific file locations
param.path = 'C:\Users\annav\Documents\Jottacloud\Neuroscience\Year 2\Thesis\Data\Vidi1 - null-cue gaze-bias\';

if pp == 1 param.subjName = 'pp01'; param.log = [param.path, 'data_session_1.csv']; param.eds = [param.path, '1_54.asc']; end 
if pp == 2 param.subjName = 'pp02'; param.log = [param.path, 'data_session_2.csv']; param.eds = [param.path, '2_95.asc']; end 
if pp == 3 param.subjName = 'pp03'; param.log = [param.path, 'data_session_3.csv']; param.eds = [param.path, '3_84.asc']; end 
if pp == 4 param.subjName = 'pp04'; param.log = [param.path, 'data_session_4.csv']; param.eds = [param.path, '4_70.asc']; end 
if pp == 5 param.subjName = 'pp05'; param.log = [param.path, 'data_session_5.csv']; param.eds = [param.path, '5_28.asc']; end 
if pp == 6 param.subjName = 'pp06'; param.log = [param.path, 'data_session_6.csv']; param.eds = [param.path, '6_43.asc']; end 
if pp == 7 param.subjName = 'pp07'; param.log = [param.path, 'data_session_7.csv']; param.eds = [param.path, '7_81.asc']; end 
if pp == 8 param.subjName = 'pp08'; param.log = [param.path, 'data_session_8.csv']; param.eds = [param.path, '8_68.asc']; end 
if pp == 9 param.subjName = 'pp09'; param.log = [param.path, 'data_session_9.csv']; param.eds = [param.path, '9_61.asc']; end 
if pp == 10 param.subjName = 'pp10'; param.log = [param.path, 'data_session_10.csv']; param.eds = [param.path, '10_60.asc']; end 
if pp == 11 param.subjName = 'pp11'; param.log = [param.path, 'data_session_11.csv']; param.eds = [param.path, '11_27.asc']; end 
if pp == 12 param.subjName = 'pp12'; param.log = [param.path, 'data_session_12.csv']; param.eds = [param.path, '12_71.asc']; end 
if pp == 13 param.subjName = 'pp13'; param.log = [param.path, 'data_session_13.csv']; param.eds = [param.path, '13_26.asc']; end 
if pp == 14 param.subjName = 'pp14'; param.log = [param.path, 'data_session_14.csv']; param.eds = [param.path, '14_57.asc']; end 
%system running wrapper

clc
clear

mode = evalin('base', 'mode');
switch mode
    case 1
        disp('Mode: Delicate');
        disp('Water Temperature:30°C');
        disp('Cycle Time: 30 minutes');
       
    case 2
        disp('Mode: Normal');
        disp('Water Temperature: 50°C');
        disp('Cycle Time: 90 minutes');
    case 3
        disp('Mode: Heavy-Duty');
        disp('Water Temperature: 90°C');
        disp('Cycle Time: 90 minutes');
    case 4
        disp('Mode: Quick Wash');
        disp('Water Temperature: 40°C');
        disp('Cycle Time: 30 minutes');
    case 5
        disp('Mode: Eco');
        disp('Water Temperature: 40°C');
        disp('Cycle Time: 90 minutes');
    case 6
        disp('Mode: Baby care');
        disp('Water Temperature: 90°C');
        disp('Cycle Time: 90 minutes');
    case 7
        disp('Mode: Wool');
        disp('Water Temperature: 40°C');
        disp('Cycle Time: 45 minutes');
    otherwise
        disp('Invalid mode. Please select a valid washing mode.');
        return
end

soaking;
%washing;
%rinsing;
predective_maintenanace;

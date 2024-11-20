

speed_rate_change = evalin('base', 'out.speed_rate_change');
speed_boolean = find(speed_rate_change == 1, 1);

if ~isempty (speed_boolean)

    assignin('base', 'speed_rate', 1)

    
else

    assignin('base', 'speed_rate', 0);
end
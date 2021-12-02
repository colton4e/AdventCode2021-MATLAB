%% Part 1
clc,clear
in = importdata('input2.txt');
val = in.data; % values
dir = in.rowheaders; % direction

horiz = 0;
depth = 0;

for i = 1:length(val)
    if strcmpi(dir(i),{'forward'})
        horiz = horiz + val(i);
    elseif strcmpi(dir(i),{'down'})
        depth = depth + val(i);
    else % strcmpi(dir(i),{'up'})
        depth = depth - val(i);
    end
end
horiz * depth

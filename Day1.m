clc,clear
in = readmatrix('input.txt')';
summ = 0;
for i = 1:length(in)-1
    if in(i+1)>in(i)
        summ = summ + 1;
    end
end
fprintf('The answer is %0.f\n', summ)
% Author Name: Salvatore Charney
% Email: charne92@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Analyzing Population Growth
% Date: October 11, 2024

population = [5000, 5200, 5350, 5600, 5800];

growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);
pop_data = [population; [0 growth_rate]];
% 0 puts a number 0 for the first value of the 2nd row

fprintf('%-10s %-15s %-15s\n', 'Year', 'Population', 'Growth Rate');
fprintf('---------------------------------------------\n');
% Makes a neat table heading, uses left justified strings


for year = 1:5
    fprintf('%-10d %-15d %-15.2f\n', year, pop_data(1, year), pop_data(2, year));
end

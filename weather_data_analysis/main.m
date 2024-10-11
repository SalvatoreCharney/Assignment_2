% Author Name: Salvatore Charney
% Email: charne92@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Analyzing Weather Data
% Date: October 11, 2024

data = readcell('weather_data.txt', 'Delimiter', ',');

temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));
% Taking the data

avg_temperature = mean(temperature);
avg_humidity = mean(humidity);
total_precipitation = sum(precipitation);
% Computations with data

fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, 'Average Temperature: %f\n', avg_temperature);
fprintf(fileID, 'Average Humidity: %f\n', avg_humidity);
fprintf(fileID, 'Total Precipitation: %f\n', total_precipitation);
fclose(fileID);

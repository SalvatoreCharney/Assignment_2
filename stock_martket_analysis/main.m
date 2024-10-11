% Author Name: Salvatore Charney
% Email: charne92@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Analyzing Stock Data
% Date: October 11, 2024

stock_data = load('stock_data.txt');

% Calculate statistics
average_price = mean(stock_data);
highest_price = max(stock_data);
lowest_price = min(stock_data);
days_increased = sum(diff(stock_data) > 0);

% Prints the statistics
fprintf('Average Closing Price: %f\n', average_price);
fprintf('Highest Closing Price: %f\n', highest_price);
fprintf('Lowest Closing Price: %f\n', lowest_price);
fprintf('Number of Days Price Increased: %d\n', days_increased);

% Line plot
figure;
plot(stock_data, '-o', 'DisplayName', 'Daily Closing Prices');
hold on;
yline(average_price, 'r--', 'Average Price', 'DisplayName', 'Average Price');
yline(highest_price, 'g--', 'Highest Price', 'DisplayName', 'Highest Price');
yline(lowest_price, 'b--', 'Lowest Price', 'DisplayName', 'Lowest Price');

% Labels, title, and legend
xlabel('Days');
ylabel('Closing Price ($)');
title('Stock Closing Prices Over 30 Days');
legend('show');
grid on;

% Saves the plot as an image file
saveas(gcf, 'stock_analysis.png');

% The summary of the analysis
summary_fileID = fopen('stock_summary.txt', 'w');
fprintf(summary_fileID, 'Stock Analysis Summary:\n');
fprintf(summary_fileID, 'Average Closing Price: %f\n', average_price);
fprintf(summary_fileID, 'Highest Closing Price: %f\n', highest_price);
fprintf(summary_fileID, 'Lowest Closing Price: %f\n', lowest_price);
fprintf(summary_fileID, 'Number of Days Price Increased: %d\n', days_increased);
fclose(summary_fileID);

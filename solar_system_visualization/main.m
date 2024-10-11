% Author Name: Salvatore Charney
% Email: charne92@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Visualizing the Solar System
% Date: October 11, 2024


planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.18, 30.07];
% Distances from the sun

planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88];
% Planets in order from closest to farthest

planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};

figure;

% Subplot 1
subplot(2, 1, 1);
scatter(planet_distances, planet_sizes * 100, 100, 'filled'); % Scale sizes for visibility
title('Planet Distances vs. Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Relative Size (Earth = 1)');
grid on;
hold on;

colors = lines(length(planet_names));
for i = 1:length(planet_names)
    scatter(planet_distances(i), planet_sizes(i) * 100, 100, 'filled', 'DisplayName', planet_names{i}, 'MarkerFaceColor', colors(i, :));
end
legend('Location', 'northeastoutside');
hold off;

% Subplot 2
subplot(2, 1, 2);
bar(planet_distances, 'FaceColor', [0.2 0.6 0.8]);
title('Planet Distances from the Sun');
xlabel('Planets');
ylabel('Distance (AU)');
set(gca, 'XTickLabel', planet_names);
grid on;

% Saves the figure as a PNG file
saveas(gcf, 'solar_system_visualization.png');

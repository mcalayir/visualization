% MATLAB script that uses the dataset of tallest_buildings_top33_2026_ctbuh.csv
% Source: CTBUH Skyscraper Center – Buildings: https://www.skyscrapercenter.com/buildings

% Figure 2: Height vs Floors scatter (by structural system)

inputFile = 'tallest_buildings_top33_2026_ctbuh.csv';
T = readtable(inputFile);

% reproducibility: save the rows + simple metadata
writetable(T, 'top33_rows_used.csv');

fid = fopen('viz_metadata_matlab.txt','w');
fprintf(fid, 'input_csv: %s\n', inputFile);
fprintf(fid, 'matlab_version: %s\n', version);
fclose(fid);

% accessibility: marker shapes (not just color) 
systems = unique(string(T.structural_system), 'stable');
systems = sort(systems); 
markers = ["o","s","^","d","v","p","h",">","<"];

fig = figure; hold on;

for i = 1:numel(systems)
    idx = string(T.structural_system) == systems(i);
    scatter(T.floors(idx), T.height_m(idx), 45, 'filled', ...
        'Marker', markers(mod(i-1,numel(markers))+1), ...
        'MarkerEdgeColor', 'k', ...
        'DisplayName', systems(i));
end

% annotate top 3 by height
T2 = T(~isnan(T.height_m) & ~isnan(T.floors), :); % ensure numeric x/y
[~, order] = sort(T2.height_m, 'descend');
top3 = order(1:min(3, height(T2)));

for j = 1:numel(top3)
    r = top3(j);
    text( ...
        T2.floors(r) + 1, T2.height_m(r) + 1, ...  % small offset
        string(T2.building(r)), ...
        'FontSize', 9, 'Interpreter', 'none' ...
    );
end

title("World's Tallest Completed Buildings (Top 33, 2026)","FontSize",14);
xlabel('Number of Floors','FontSize',14);
ylabel('Height (m)','FontSize',14);
legend('Location','southeast','FontSize',11);
grid on; 
box on;
hold off;

exportgraphics(fig, 'Figure2_MATLAB.png', 'Resolution', 300);

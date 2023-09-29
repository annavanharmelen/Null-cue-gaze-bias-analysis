%% Final figure combined

% Define data and standart error values for the first subplot / RT
y1 = decisiontimes_meansubtracted;
err1 = std(decisiontimes_meansubtracted(:,1:3)) ./ sqrt(p); 
    
% Define data and standart error for the second subplot / ACC
y2 = error_meansubtracted;
err2 = std(error_meansubtracted(:,1:3)) ./ sqrt(p); 

% Create first subplot
figure;
subplot(2,2,1);
hold on;

bar(1, y1(1), 'FaceColor',[0.581962662256426, 0.823698630683700, 0.565763287742670], ...
    'EdgeColor', [0.342270126236866, 0.674739442521582, 0.372691951059547], ...
    'LineWidth', 1);
bar(2, y1(2), 'FaceColor',[0.342270126236866, 0.674739442521582, 0.372691951059547], ...
    'EdgeColor', [0.342270126236866, 0.674739442521582, 0.372691951059547], ...
    'LineWidth', 1);
bar(4, y1(3), 'FaceColor',[0.720352383715823, 0.597234684240263, 0.779740945794443], ...
    'EdgeColor', [0.594268486928075, 0.429722646052460, 0.664774251063668], ...
    'LineWidth', 1);
% bar(5, y1(4), 'FaceColor',[0.594268486928075, 0.429722646052460, 0.664774251063668], ...
%     'EdgeColor', [0.594268486928075, 0.429722646052460, 0.664774251063668], ...
%     'LineWidth', 1); 
% bar(7, y1(5), 'FaceColor',[0.7, 0.7, 0.7], 'EdgeColor', [0.5, 0.5, 0.5], ...
%     'LineWidth', 1);
% bar(8, y1(6), 'FaceColor',[0.5, 0.5, 0.5], 'EdgeColor', [0.5, 0.5, 0.5], ...
%     'LineWidth', 1);

% Add error bars
errorbar(1, y1(1), err1(1), 'Color', [0.245, 0.480, 0.262], 'LineWidth', 2, 'CapSize', 10);
errorbar(2, y1(2), err1(2), 'Color', [0.245, 0.480, 0.262], 'LineWidth', 2, 'CapSize', 10);
errorbar(4, y1(3), err1(3), 'Color', [0.403, 0.267, 0.439], 'LineWidth', 2, 'CapSize', 10);
% errorbar(5, y1(4), err1(4), 'Color', [0.403, 0.267, 0.439], 'LineWidth', 2, 'CapSize', 10);
% errorbar(7, y1(5), err1(5), 'Color', [0.3, 0.3, 0.3], 'LineWidth', 2, ...
%     'CapSize', 10);
% errorbar(8, y1(6), err1(6), 'Color', [0.3, 0.3, 0.3], 'LineWidth', 2, ...
%     'CapSize', 10);

% Set axis properties and labels for the first subplot
set(gca,'xticklabel',{'100 ms'; '200 ms'; '400 ms'}, 'FontSize', 12, ...
'Fontname','Arial');
xticks([1.5, 4.5, 7.5])
yticks([500 550 600 650 700 750 800 850])
ylim([500 850])
ylabel('Decision time (ms)', 'FontSize', 12, 'Fontname','Arial')
xlabel('Fix displacement timing', 'FontSize', 12, 'Fontname','Arial')
title('Mean response onset time')

% Adjust the figure properties
ax = gca; % Get the current axes handle
ax.TickDir = 'out'; % Set tick direction to 'out'
ax.Box = 'off'; % Remove the box around the axes
ax.XAxis.TickLength = [0.01, 0]; % Set x-axis tick length
ax.YAxis.TickLength = [0.01, 0]; % Set y-axis tick length 

% Create second subplot
subplot(2,2,2);
hold on;

bar(1, y2(1), 'FaceColor',[0.581962662256426, 0.823698630683700, 0.565763287742670], ...
    'EdgeColor', [0.342270126236866, 0.674739442521582, 0.372691951059547], ...
    'LineWidth', 1);
bar(2, y2(2), 'FaceColor',[0.342270126236866, 0.674739442521582, 0.372691951059547], ...
    'EdgeColor', [0.342270126236866, 0.674739442521582, 0.372691951059547], ...
    'LineWidth', 1);
bar(4, y2(3), 'FaceColor',[0.720352383715823, 0.597234684240263, 0.779740945794443], ...
    'EdgeColor', [0.594268486928075, 0.429722646052460, 0.664774251063668], ...
    'LineWidth', 1);
% bar(5, y2(4), 'FaceColor',[0.594268486928075, 0.429722646052460, 0.664774251063668], ...
%     'EdgeColor', [0.594268486928075, 0.429722646052460, 0.664774251063668], ...
%     'LineWidth', 1); 
% bar(7, y2(5), 'FaceColor',[0.7, 0.7, 0.7], 'EdgeColor', [0.5, 0.5, 0.5], ...
%     'LineWidth', 1);
% bar(8, y2(6), 'FaceColor',[0.5, 0.5, 0.5], 'EdgeColor', [0.5, 0.5, 0.5], ...
%     'LineWidth', 1);

% Add error bars
errorbar(1, y2(1), err2(1), 'Color', [0.245, 0.480, 0.262], 'LineWidth', 2, 'CapSize', 10);
errorbar(2, y2(2), err2(2), 'Color', [0.245, 0.480, 0.262], 'LineWidth', 2, 'CapSize', 10);
errorbar(4, y2(3), err2(3), 'Color', [0.403, 0.267, 0.439], 'LineWidth', 2, 'CapSize', 10);
% errorbar(5, y2(4), err2(4), 'Color', [0.403, 0.267, 0.439], 'LineWidth', 2, 'CapSize', 10);
% errorbar(7, y2(5), err2(5), 'Color', [0.3, 0.3, 0.3], 'LineWidth', 2, ...
%     'CapSize', 10);
% errorbar(8, y2(6), err2(6), 'Color', [0.3, 0.3, 0.3], 'LineWidth', 2, ...
%     'CapSize', 10);

% Set axis properties and labels for the first subplot
set(gca,'xticklabel',{'100 ms'; '200 ms'; '400 ms'}, 'FontSize', 12, ...
'Fontname','Arial');
xticks([1.5, 4.5, 7.5])
yticks([0 5 10 15 20])
ylim([0 20])
ylabel('Dial up error (degree)', 'FontSize', 12, 'Fontname','Arial')
xlabel('Fix displacement timing', 'FontSize', 12, 'Fontname','Arial')
title('Mean dial up error')

% Adjust the figure properties
ax = gca; % Get the current axes handle
ax.TickDir = 'out'; % Set tick direction to 'out'
ax.Box = 'off'; % Remove the box around the axes
ax.XAxis.TickLength = [0.01, 0]; % Set x-axis tick length
ax.YAxis.TickLength = [0.01, 0]; % Set y-axis tick length 

% Mean congruency effect response onset time
subplot(2, 2, 3)
hold on;

dotdensity(pp_RT_Ceffect_mean, 'dotSize', 16, 'dotFaceColor', dot_face_color, ...
    'dotEdgeColor', [1 1 1], 'lineCon', false); 

% Set the x-axis tick labels and adjust the plot limits
xticks(1:numel(fix_jump_time));
xticklabels(string(fix_jump_time));
offset = 0.05/8;
xlim([0.5-offset, numel(fix_jump_time)-offset/2+0.5]);
ylim([-100, 120]) 

% Adjust the figure properties
ax = gca; % Get the current axes handle
ax.TickDir = 'out'; % Set tick direction to 'out'
ax.Box = 'off'; % Remove the box around the axes
ax.XAxis.TickLength = [0.01, 0]; % Set x-axis tick length
ax.YAxis.TickLength = [0.01, 0]; % Set y-axis tick length 

% Set the axis labels
xlabel('Fix displacement timing');
ylabel('Response onset time (ms)');
title('Mean congruency effect response onset time')

% Calculate- and add mean line to the plot 
for z = 1:numel(fix_jump_time)
    offset_mean = 0.16;
    % Get the x-coordinate from the xticks
    x1 = z;
    % Calculate the mean of the response onset times for this x-coordinate
    y1 = mean(pp_RT_Ceffect_mean(:, z));
    % Calculate the color index based on the x-coordinate
    color_index = mod(z, size(dot_line_color, 1) + 1);
    % Add transparent rectangles for 95% confidence intervals
    ci_y1 = 1.96 * (std(pp_RT_Ceffect_mean(:, z)) ...
            / sqrt(length(pp_RT_Ceffect_mean(:, z))));
    faceAlpha = 0.6; % 60% transparent
    xVertices1 = [x1 - offset_mean, x1 + offset_mean, x1 + offset_mean, x1 - offset_mean];
    yVertices1 = [y1 - ci_y1, y1 - ci_y1, y1 + ci_y1, y1 + ci_y1];
    patch(xVertices1, yVertices1, [0.8, 0.8, 0.8], 'FaceAlpha', faceAlpha, 'EdgeColor', [0.8, 0.8, 0.8], 'LineWidth', 1);
    % Add the mean line at the x-coordinate, with a length determined by the offset_mean variable
    line([x1-offset_mean, x1+offset_mean], [y1, y1], 'Color', dot_line_color(color_index, :), 'LineWidth', 7);
end

offset_violin = 0.23; 

% Define the jump times
x_tick_positions = linspace(1, 3, length(fix_jump_times));

% Loop through the jump times and plot the half violins with all optional parameters
for i = 1:length(fix_jump_times)
    violin(x_tick_positions(i) + offset_violin, pp_RT_Ceffect_mean(:, i), ...
        'n', 800, ...
        'facecolor', dot_face_color(i, :), ...
        'facealpha', 1, ...
        'linestyle', '-', ...
        'linecolor', dot_face_color(i, :), ...
        'linewidth', 2.5, ...
        'side', 'right', ...
        'rotation', 'vertical', ...
        'scaling', 15, ...
        'cutoff', 1e-3, ...
        'kernel', 'normal', ...
        'kernelwidth', []);
    hold on;
end

% Add black dotted line at y=0 along the x-axis

line(xlim, [0 0], 'Color', 'k', 'LineStyle', '--', 'LineWidth', 2.5);

% Mean congruency effect dial up error
subplot(2, 2, 4)
hold on;

dotdensity(pp_ACC_Ceffect_mean, 'dotSize', 16, 'dotFaceColor', dot_face_color, ...
    'dotEdgeColor', [1 1 1], 'lineCon', false); 

% Set the x-axis tick labels and adjust the plot limits
xticks(1:numel(fix_jump_time));
xticklabels(string(fix_jump_time));
xlim([0.5-offset, numel(fix_jump_time)-offset/2+0.5]);
ylim([-6, 6]) 

% Adjust the figure properties
ax = gca; % Get the current axes handle
ax.TickDir = 'out'; % Set tick direction to 'out'
ax.Box = 'off'; % Remove the box around the axes
ax.XAxis.TickLength = [0.01, 0]; % Set x-axis tick length
ax.YAxis.TickLength = [0.01, 0]; % Set y-axis tick length 

% Set the axis labels
xlabel('Fix displacement timing');
ylabel('Dial up error (degree)');
title('Mean congruency effect dial up error')

% Calculate- and add mean line to the plot 
for z = 1:numel(fix_jump_time)
    offset_mean = 0.16;
    % Get the x-coordinate from the xticks
    x1 = z;
    % Calculate the mean of the response onset times for this x-coordinate
    y1 = mean(pp_ACC_Ceffect_mean(:, z));
    % Calculate the color index based on the x-coordinate
    color_index = mod(z, size(dot_line_color, 1) + 1);
    ci_y1 = 1.96 * (std(pp_ACC_Ceffect_mean(:, z)) ...
            / sqrt(length(pp_ACC_Ceffect_mean(:, z))));
    faceAlpha = 0.6; % 60% transparent
    xVertices1 = [x1 - offset_mean, x1 + offset_mean, x1 + offset_mean, x1 - offset_mean];
    yVertices1 = [y1 - ci_y1, y1 - ci_y1, y1 + ci_y1, y1 + ci_y1];
    patch(xVertices1, yVertices1, [0.8, 0.8, 0.8], 'FaceAlpha', faceAlpha, 'EdgeColor', [0.8, 0.8, 0.8]);
    % Add the mean line at the x-coordinate, with a length determined by the offset_mean variable
    line([x1-offset_mean, x1+offset_mean], [y1, y1], 'Color', dot_line_color(color_index, :), 'LineWidth', 7);
end

% Loop through the jump times and plot the half violins with all optional parameters
for i = 1:length(fix_jump_times)
    violin(x_tick_positions(i) + offset_violin, pp_ACC_Ceffect_mean(:, i), ...
        'n', 800, ...
        'facecolor', dot_face_color(i, :), ...
        'facealpha', 1, ...
        'linestyle', '-', ...
        'linecolor', dot_face_color(i, :), ...
        'linewidth', 2.5, ...
        'side', 'right', ...
        'rotation', 'vertical', ...
        'scaling', 1, ...
        'cutoff', 1e-3, ...
        'kernel', 'normal', ...
        'kernelwidth', []);
    hold on;
end

% Add black dotted line at y=0 along the x-axis

line(xlim, [0 0], 'Color', 'k', 'LineStyle', '--', 'LineWidth', 2.5);

%%

subjColumn = data.Participant_ID;  % Extract the subj column

uniqueSubj = unique(subjColumn);  % Get unique string values
numericalValues = 1:numel(uniqueSubj);  % Generate numerical values

% Create a mapping between original string values and numerical values
subjMapping = containers.Map(uniqueSubj, numericalValues);

% Convert the subj column to numerical values
numericalSubj = cellfun(@(x) subjMapping(x), subjColumn);

data.Participant_ID = numericalSubj;  % Replace subj column with numerical values


%%

writetable(data, 'data.csv');

%%
% create participant ID column
n_participants = size(pp_meanRT_congruent, 1);
pp_ID = (1:n_participants)';

% merge congruent and incongruent matrices and add participant ID column
congruent_100 = pp_meanRT_congruent(:,1);
congruent_200 = pp_meanRT_congruent(:,2);
congruent_400 = pp_meanRT_congruent(:,3);
incongruent_100 = pp_meanRT_incongruent(:,1);
incongruent_200 = pp_meanRT_incongruent(:,2);
incongruent_400 = pp_meanRT_incongruent(:,3);

merged_data = [pp_ID, congruent_100, congruent_200, congruent_400, incongruent_100, incongruent_200, incongruent_400];

% write merged data to a csv file with headers
column_headers = {'pp_ID', 'congruent_100', 'congruent_200', 'congruent_400', 'incongruent_100', 'incongruent_200', 'incongruent_400'};
data_with_headers = [column_headers; num2cell(merged_data)];
writecell(data_with_headers, 'merged_data_1.csv', 'Delimiter', ',');

%%
% create participant ID column
n_participants = size(pp_meanRT_congruent, 1);
pp_ID = (1:n_participants)';

% merge congruent and incongruent matrices and add participant ID column
congruent_100 = pp_meanACC_congruent(:,1);
congruent_200 = pp_meanACC_congruent(:,2);
congruent_400 = pp_meanACC_congruent(:,3);
incongruent_100 = pp_meanACC_incongruent(:,1);
incongruent_200 = pp_meanACC_incongruent(:,2);
incongruent_400 = pp_meanACC_incongruent(:,3);

merged_data = [pp_ID, congruent_100, congruent_200, congruent_400, incongruent_100, incongruent_200, incongruent_400];

% write merged data to a csv file with headers
column_headers = {'pp_ID', 'congruent_100', 'congruent_200', 'congruent_400', 'incongruent_100', 'incongruent_200', 'incongruent_400'};
data_with_headers = [column_headers; num2cell(merged_data)];
writecell(data_with_headers, 'merged_data.csv', 'Delimiter', ',');


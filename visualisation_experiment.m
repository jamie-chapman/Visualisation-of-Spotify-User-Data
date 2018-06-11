clear 
close all
clc

%% ICP 3099 - Classifying of Spotify User Data
% A visualisation of the music feature data of the tracks collected by the
% Spotify User Data Crawler application.

%N.B. Order of Features:
%popularity1, danceability2, energy3, key4, loudness5, mode6, speechiness7,
%acousticness8, instrumentalness9, liveness10, valence11, tempo12

%Load data-----------------------------------------------------------------
% You may add multiple users by loading 'username_MATLAB.txt' from multiple paths 
% U1 = load('');
% U2 = load('C:/Users/Jamie/Desktop/user_data_dump/bcpurleigh/bcpurleigh_MATLAB.txt');
% U3 = load('C:/Users/Jamie/Desktop/user_data_dump/williamthomast-gb/williamthomast-gb_MATLAB.txt');
% U4 = load('C:/Users/Jamie/Desktop/user_data_dump/rebeccahoulding/rebeccahoulding_MATLAB.txt');

% And combining the data
% D = [U1;U2;U3;U4];

%Or just load a single user here
D = load('');

%Processing----------------------------------------------------------------
%Plotting------------------------------------------------------------------
figure, hold on, axis tight

subplot(5,2,1);
histogram(D(:,1), 100, 'FaceColor', 'r');
line([mean(D(:,1)), mean(D(:,1))], ylim, 'LineWidth', 2, 'Color', 'k');
%line([(mean(D(:,1) + std(D(:,1)))), (mean(D(:,1) + std(D(:,1))))], ylim, 'LineWidth', 2, 'Color', 'g');
%line([(mean(D(:,1) - std(D(:,1)))), (mean(D(:,1) - std(D(:,1))))], ylim, 'LineWidth', 2, 'Color', 'g');
title('Popularity');

subplot(5,2,2);
histogram(D(:,2), 100, 'FaceColor', 'r');
line([mean(D(:,2)), mean(D(:,2))], ylim, 'LineWidth', 2, 'Color', 'k');
title('Dancability');

subplot(5,2,3);
histogram(D(:,3), 100, 'FaceColor', 'r');
line([mean(D(:,3)), mean(D(:,3))], ylim, 'LineWidth', 2, 'Color', 'k');
title('Energy');

subplot(5,2,4);
histogram(D(:,5), 100, 'FaceColor', 'r');
line([mean(D(:,5)), mean(D(:,5))], ylim, 'LineWidth', 2, 'Color', 'k');
title('Loudness');

subplot(5,2,5);
histogram(D(:,7), 100, 'FaceColor', 'r');
line([mean(D(:,7)), mean(D(:,7))], ylim, 'LineWidth', 2, 'Color', 'k');
title('Speechiness');

subplot(5,2,6);
%plot(D(:,8), zeros(1,size(D(:,8),1)), 'k.');
histogram(D(:,8), 10, 'FaceColor', 'r');
line([mean(D(:,8)), mean(D(:,8))], ylim, 'LineWidth', 2, 'Color', 'k');
title('Acousticness');

subplot(5,2,7);
%plot(D(:,9), zeros(1,size(D(:,9),1)), 'k.');
histogram(D(:,9), 10, 'FaceColor', 'r');
line([mean(D(:,9)), mean(D(:,9))], ylim, 'LineWidth', 2, 'Color', 'k');
title('Instrumentalness');

subplot(5,2,8);
histogram(D(:,10), 100, 'FaceColor', 'r');
line([mean(D(:,10)), mean(D(:,10))], ylim, 'LineWidth', 2, 'Color', 'k');
title('Liveness');

subplot(5,2,9);
histogram(D(:,11), 100, 'FaceColor', 'r');
line([mean(D(:,11)), mean(D(:,11))], ylim, 'LineWidth', 2, 'Color', 'k');
title('Valence');

subplot(5,2,10);
histogram(D(:,12), 100, 'FaceColor', 'r');
hold on;
line([mean(D(:,12)), mean(D(:,12))], ylim, 'LineWidth', 2, 'Color', 'k');
title('Tempo');

%N.B. Order of Features:
%popularity1, danceability2, energy3, key4, loudness5, mode6, speechiness7,
%acousticness8, instrumentalness9, liveness10, valence11, tempo12

%Popularity vs tempo
% plot(D(:,1), D(:,12),'k.');

% %Popularity vs loudness
% plot(D(:,1), D(:,5),'k.');

% %Popularity vs energy
% %N.B Some correlation between lower energy and less popularity
% plot(D(:,1), D(:,3),'k.');

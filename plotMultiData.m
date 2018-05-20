function plotMultiData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.


%Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y==0);

% Create New Figure
figure; hold on;
%Plot Examples
plot(X(pos, 1), X(pos, 1), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 1), X(pos, 3), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 1), X(pos, 4), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 1), X(pos, 5), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 2), X(pos, 1), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 2), X(neg, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 2), X(pos, 2), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 2), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 2), X(pos, 3), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 2), X(neg, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 2), X(pos, 4), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 2), X(neg, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 2), X(pos, 5), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 2), X(neg, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 3), X(pos, 1), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 3), X(neg, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 3), X(pos, 2), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 3), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 3), X(pos, 3), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 3), X(neg, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 3), X(pos, 4), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 3), X(neg, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 3), X(pos, 5), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 3), X(neg, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 4), X(pos, 1), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 4), X(neg, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 4), X(pos, 2), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 4), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 4), X(pos, 3), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 4), X(neg, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 4), X(pos, 4), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 4), X(neg, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 4), X(pos, 5), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 4), X(neg, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 5), X(pos, 1), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 5), X(neg, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 5), X(pos, 2), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 5), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 5), X(pos, 3), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 5), X(neg, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 5), X(pos, 4), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 5), X(neg, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;

figure; hold on;
%Plot Examples
plot(X(pos, 5), X(pos, 5), 'k+', 'LineWidth', 2 , 'MarkerSize', 7);
plot(X(neg, 5), X(neg, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
hold off;
end

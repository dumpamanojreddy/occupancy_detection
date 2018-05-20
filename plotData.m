function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

%Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y==0);

%Plot Examples
subplot(5,5,1);
plot(X(:, 1), X(:, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,2);
plot(X(:, 2), X(:, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,3);
plot(X(:, 3), X(:, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,4);
plot(X(:, 4), X(:, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,5);
plot(X(:, 5), X(:, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,6);
plot(X(:, 1), X(:, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,7);
plot(X(:, 2), X(:, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,8);
plot(X(:, 3), X(:, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,9);
plot(X(:, 4), X(:, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,10);
plot(X(:, 5), X(:, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,11);
plot(X(:, 1), X(:, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,12);
plot(X(:, 2), X(:, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,13);
plot(X(:, 3), X(:, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,14);
plot(X(:, 4), X(:, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,15);
plot(X(:, 5), X(:, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,16);
plot(X(:, 1), X(:, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,17);
plot(X(:, 2), X(:, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,18);
plot(X(:, 3), X(:, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,19);
plot(X(:, 4), X(:, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,20);
plot(X(:, 5), X(:, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,21);
plot(X(:, 1), X(:, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,22);
plot(X(:, 2), X(:, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,23);
plot(X(:, 3), X(:, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,24);
plot(X(:, 4), X(:, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

subplot(5,5,25);
plot(X(:, 5), X(:, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerEdgeColor','b','MarkerSize', 7, 'LineWidth', 2 );

hold off;

end

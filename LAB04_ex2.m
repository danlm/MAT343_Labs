clf                               % clear all settings for the plot
T =[-0.5,0,0.5,-0.5;-1,1,-1,-1];
plot(T(1,:),T(2,:),'linewidth',2)        % plot the triangle
hold on
Q = [cos(pi/4), -sin(pi/4); sin(pi/4), cos(pi/4)];
QT = Q*T;                                % rotate the triangle
plot(QT(1,:),QT(2,:),'-r','linewidth',2) % plot the rotated triangle
title('Example of Rotation')                     % add a title
legend('original triangle','rotated triangle')   % add a legend
grid on                                          % add a grid
axis equal                                       % set the axis equal
hold off


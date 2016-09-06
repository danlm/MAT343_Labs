clf                                     %clear all settings for the plot
T = [-0.5,0,0.5,-0.5;-1,1,-1,-1];
L = [cos(pi/20), -sin(pi/20); sin(pi/20), cos(pi/20)];
R = [cos(-pi/20), -sin(-pi/20); sin(-pi/20), cos(-pi/20)];
D = 1.125*eye(2);
C = 0.9*eye(2);
p = plot(T(1,:),T(2,:));                % plot the triangle
axis([-10,10,-10,10])                   % set size of the graph
axis square                             % make the display square
figure(gcf)                             % display graphic window
% Adjust the windows on your screen so that both the command window 
% and the graphics window show
hold on                                   % hold the current graph
for i = 1:20
   T = L*D*T;                               % transform the figure
   set(p,'xdata',T(1,:),'ydata',T(2,:));  % erase original figure and plot
                                          % the transformed figure
   pause(0.1)               % adjust this pause to suit your computer
end
pause(0.3)
for i = 1:20
   T = C*R*T;                               % transform the figure
   set(p,'xdata',T(1,:),'ydata',T(2,:));  % erase original figure and plot
                                          % the transformed figure
   pause(0.1)               % adjust this pause to suit your computer
end
hold off


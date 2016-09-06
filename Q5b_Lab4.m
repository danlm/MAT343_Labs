clf
T=[-0.5,0,0.5,-0.5;-1,1,-1,-1;1,1,1,1];   % define the triangle in homogeneous coordinates
c1 =.1; c2 = .1;
M1 = [1,0,c1;0,1,c2;0,0,1];   % define the first translation matrix
M2 = [1,0,-c1;0,1,0;0,0,1];   % define the second translation matrix
M3 = [1,0,c1;0,1,-c2;0,0,1];   % define the third translation matrix
Q = [cos(pi/40), -sin(pi/40),0; sin(pi/40), cos(pi/40),0;0,0,1] % define the rotation matrix
p = plot(T(1,:),T(2,:));   % plot the original triangle
axis([-7,9,-7,7])
axis square
figure(gcf)
for i = 1:20
    T = Q*M1*T;   % compute the translated triangle
    set(p,'xdata',T(1,:),'ydata',T(2,:));  % plot the translated triangle
    pause(0.1)
end
for i = 1:40
    T=Q*M2*T;   % compute the translated triangle
    set(p,'xdata',T(1,:),'ydata',T(2,:));  % plot the translated triangle
    pause(0.1)
end
for i = 1:20
    T = Q*M3*T;   % compute the translated triangle
    set(p,'xdata',T(1,:),'ydata',T(2,:));  % plot the translated triangle
    pause(0.1)
end

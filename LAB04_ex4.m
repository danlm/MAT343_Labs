clf                               
T =[-0.5,0,0.5,-0.5;-1,1,-1,-1];
plot(T(1,:),T(2,:),'linewidth',2)       
hold on
Q = [cos(pi/4), -sin(pi/4); sin(pi/4), cos(pi/4)];
R = [0,1;1,0];
QRT = Q*R*T;                               
plot(QRT(1,:),QRT(2,:),'-r','linewidth',2) 
title('Example of Reflexion and Rotation')                     
legend('original triangle','modified triangle')   
grid on                                          
axis equal                                       
hold off


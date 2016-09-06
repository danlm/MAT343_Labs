clf                               
T =[-0.5,0,0.5,-0.5;-1,1,-1,-1];
plot(T(1,:),T(2,:),'linewidth',2)       
hold on
R = [0,1;1,0];
RT = R*T;                               
plot(RT(1,:),RT(2,:),'-r','linewidth',2) 
title('Reflection at 45 degrees')                     
legend('original triangle','reflected triangle')   
grid on                                          
axis equal                                       
hold off


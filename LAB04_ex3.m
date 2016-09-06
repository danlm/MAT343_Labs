clf                               
T =[-0.5,0,0.5,-0.5;-1,1,-1,-1];
plot(T(1,:),T(2,:),'linewidth',2)        
hold on
D = [1.25, 0 ; 0, 1.25];
DT = D*T;                                
plot(DT(1,:),DT(2,:),'-r','linewidth',2) 
title('Example of Dilation')  
legend('original triangle','dilated triangle')  
grid on                                         
axis equal                                       
hold off


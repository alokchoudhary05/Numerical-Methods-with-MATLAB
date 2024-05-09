%t=0:0.1:2*pi;
%z=cos(t);
%plot(t,z,'rx--','MarkerSize',10);
clear all
clc

t=0:0.1:2*pi;
z=sin(t);
y=cos(t);
u=t;
%hold on
subplot(3,1,1)
plot(t,z,'rx--','MarkerSize',2);
xlabel('Time','FontSize',10);
ylabel('Waves','FontSize',10);
title('Waveview','FontSize',8);
legend('Sinefunction','Location','Best');
grid on

subplot(3,1,2)
plot(t,y,'bx--','MarkerSize',2);
xlabel('Time','FontSize',10);
ylabel('Waves','FontSize',10);
title('Waveview','FontSize',8);
legend('cosfunction','Location','Best');
grid on

subplot(3,1,3)
plot(t,u,'gx--','MarkerSize',2);
xlabel('Time','FontSize',10);
ylabel('Waves','FontSize',10);
title('Waveview','FontSize',8);
legend('stline','Location','Best');
grid on






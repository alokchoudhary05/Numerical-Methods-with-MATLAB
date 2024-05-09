clear all
clc

%t=0:1:2*pi;
%z=exp(t);
%y=exp(sin(t));
%u=exp(cos(t));
%hold on
%plot(t,z,'rx--','MarkerSize',2);
%plot(t,y,'bx--','MarkerSize',2);
%plot(t,u,'gx--','MarkerSize',2);
%xlabel('Time','FontSize',10);
%ylabel('Waves','FontSize',10);
%title('Waveview','FontSize',8)
%legend('Sinefunction','cosfunction','stline','Location','Best')
%text(1,0,'The first point')
%grid on








% New form me
t=0:0.1:2*pi;
z=exp(t);
y=exp(sin(t));
u=exp(cos(t));

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


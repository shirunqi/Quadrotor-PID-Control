close all
RTD = 180 / pi;
figure(1)
plot3(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
grid on
hold on
plot3(xc,yc,zc);


figure(2)
plot(t,x,t,xc,'linewidth',2);
xlabel('t');ylabel('x');
legend('实际','期望');
grid on

figure(3)
plot(t,y,t,yc,'linewidth',2);
xlabel('t');ylabel('y');
legend('实际','期望');
grid on

figure(4)
plot(t,z,t,zc,'linewidth',2);
xlabel('t');ylabel('z');
legend('实际','期望');
grid on

figure(5)
plot(t,phi * RTD,t,theta * RTD,t,psi * RTD,'linewidth',2);
xlabel('t');ylabel('姿态角');
legend('\phi','\theta','\psi');
grid on

figure(6)
plot(t,phic * RTD,t,thetac * RTD,t,psic * RTD,'linewidth',2);
xlabel('t');ylabel('期望姿态角');
legend('\phi_c','\theta_c','\psi_c');
grid on

figure(7)
plot(t,phi * RTD,t,phic * RTD,'linewidth',2)
xlabel('t');ylabel('姿态角');
legend('实际','期望');
grid on

figure(8)
plot(t,theta * RTD,t,thetac * RTD,'linewidth',2)
xlabel('t');ylabel('姿态角');
legend('实际','期望');
grid on

figure(9)
plot(t,psi * RTD,t,psic * RTD,'linewidth',2)
xlabel('t');ylabel('姿态角');
legend('实际','期望');
grid on

figure(10)
plot3(xc,yc,zc,'r--');
xlabel('x');ylabel('y');zlabel('z');
axis([-8 8 -0.6 0.6 0 4.5]);
grid on
hold on
for i = 1 : numel(x)
    plot3(x(i),y(i),z(i),'b.','linewidth',0.1);
    hold on
    pause(0.01);
end



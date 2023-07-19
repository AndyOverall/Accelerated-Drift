% Figure1A.m
% Chimpanzee (wild)

clear all
close all
clc

lx=[1
    0.813
    0.713
    0.676
    0.64
    0.616
    0.605
    0.593
    0.559
    0.503
    0.503
    0.472
    0.453
    0.43
    0.409
    0.409
    0.396
    0.396
    0.383
    0.369
    0.356
    0.349
    0.335
    0.328
    0.328
    0.298
    0.284
    0.277
    0.249
    0.234
    0.211
    0.188
    0.165
    0.151
    0.144
    0.115
    0.115
    0.107
    0.099
    0.085
    0.064
    0.064
    0.064
    0.064
    0.064
    0.043
    0.032
    0.021
    0.021
    0.021
    0.021
    0.021
    0.021
    0.021
    0.011
    0.011];

mx=[0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0
    0.051
    0.045
    0.07
    0.077
    0.189
    0.135
    0.107
    0.029
    0.061
    0.095
    0.092
    0.126
    0.123
    0.064
    0.062
    0.073
    0.206
    0.08
    0.078
    0.066
    0.047
    0.051
    0.18
    0.031
    0.077
    0
    0.041
    0.18
    0
    0.1
    0
    0.122
    0
    0.238
    0
    0
    0
    0
    0.25
    0
    0
    0
    0
    0
    0];

age=(1:56)';

sgtitle('(a) Chimpanzee (wild)','fontsize',30,'Interpreter','latex')

subplot(1,2,1)
h1=bar(age,lx);
set(h1,'facecolor','red')
axis([0,60,0,1.1])
set(gca,'linewidth',3,'fontsize',20,'XTick',[1,10:10:60])
xlabel('age (years)','fontsize',30,'Interpreter','latex')
ylabel('survival rate, $l_x$','fontsize',30,'Interpreter','latex')

subplot(1,2,2)
h2=bar(age,mx);
set(h2,'facecolor','blue')
axis([0,60,0,0.275])
set(gca,'linewidth',3,'fontsize',20,'XTick',[1,10:10:60])
xlabel('age (years)','fontsize',30,'Interpreter','latex')
ylabel('reproduction rate, $m_x$','fontsize',30,'Interpreter','latex')

ounits=get(gcf,'Units');
set(gcf,'Units','normalized','OuterPosition',[0 0 1 1],'Units',ounits)
orient landscape

print -dpng Figure1A
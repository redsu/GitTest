
n = csvread('sandpaper40.txt','r');
%n = [0:1249];
x1 = n;
N = 4096;
X = abs(fft(x1,N));
X = fftshift(X);
F = [-N/2:N/2-1];

FF = ones(625:1);
XX = ones(625:1);
for i = 1:625
    FF(i) = F(i+2048);
    XX(i) = X(i+2048);
end
figure(1);
subplot(3,1,1);
plot(FF,XX);
A1=FF;
A2=XX;
xlabel('frequency / f_s');

n = csvread('sandpaper80.txt','r');
%n = [0:1249];
x1 = n;
N = 4096;
X = abs(fft(x1,N));
X = fftshift(X);
F = [-N/2:N/2-1];

FF = ones(625:1);
XX = ones(625:1);
for i = 1:625
    FF(i) = F(i+2048);
    XX(i) = X(i+2048);
end
subplot(3,1,2);
plot(FF,XX);
B1=FF;
B2=XX;
xlabel('frequency / f_s');

n = csvread('sandpaper180 - 02.txt','r');
%n = [0:1249];
x1 = n;
N = 4096;
X = abs(fft(x1,N));
X = fftshift(X);
F = [-N/2:N/2-1];

FF = ones(625:1);
XX = ones(625:1);
for i = 1:625
    FF(i) = F(i+2048);
    XX(i) = X(i+2048);
end
subplot(3,1,3);
plot(FF,XX);
C1=FF;
C2=XX;
xlabel('frequency / f_s');
gamma = 0.1;
exp(-gamma * norm(A2-C2))
exp(-gamma * norm(A2-B2))
exp(-gamma * norm(B2-C2))
%A2*transp(C2)/norm(A2)/norm(C2)*(1-(abs(norm(A2)-norm(C2))/norm(A2)))
%A2*transp(B2)/norm(A2)/norm(B2)*(1-(abs(norm(A2)-norm(B2))/norm(A2)))
%C2*transp(B2)/norm(C2)/norm(B2)*(1-(abs(norm(B2)-norm(C2))/norm(B2)))


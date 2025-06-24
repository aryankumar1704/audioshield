%%   PART1

Fs = 10000;
f1 = 1000;
f2 = 1500;
f3 = 4000;
f4 = 11000;

t = 0:1/Fs:0.5;
x1 = cos(2*pi*f1*t)+cos(2*pi*f2*t)+cos(2*pi*f3*t);

% figure;
% plot(t,x1);

x2 = cos(2*pi*f1*t);

% figure;
% plot(t,x2);

x3 = cos(2*pi*f4*t);

% figure;
% plot(t,x3);

%N-Point DFT
N = 1024

X1 = fftshift(fft(x1(1:N)));
X2 = fftshift(fft(x2(1:N)));
X3 = fftshift(fft(x3(1:N)));

freq_axis = (-N/2:N/2-1)*(Fs/N);

% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X1));
% subplot(2,1,2)
% plot(freq_axis,angle(X1));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X2));
% subplot(2,1,2)
% plot(freq_axis,angle(X2));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X3));
% subplot(2,1,2)
% plot(freq_axis,angle(X3));

y1 = x1.^2;
y2 = x2.^2;
y3 = x3.^2;

% figure;
% plot(t,y1);
% 
% figure;
% plot(t,y2);
% 
% figure;
% plot(t,y3);

Y1 = fftshift(fft(y1(1:N)));
Y2 = fftshift(fft(y2(1:N)));
Y3 = fftshift(fft(y3(1:N)));

% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(Y1));
% subplot(2,1,2)
% plot(freq_axis,angle(Y1));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(Y2));
% subplot(2,1,2)
% plot(freq_axis,angle(Y2));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(Y3));
% subplot(2,1,2)
% plot(freq_axis,angle(Y3));

Fs2 = 2*Fs;

t = 0:1/Fs2:0.5;
x11 = cos(2*pi*f1*t)+cos(2*pi*f2*t)+cos(2*pi*f3*t);

% figure;
% plot(t,x1);

x21 = cos(2*pi*f1*t);

% figure;
% plot(t,x2);

x31 = cos(2*pi*f4*t);

% figure;
% plot(t,x3);

%N-Point DFT
N = 1024;

X11 = fftshift(fft(x11(1:N)));
X21 = fftshift(fft(x21(1:N)));
X31 = fftshift(fft(x31(1:N)));

freq_axis = (-N/2:N/2-1)*(Fs2/N);

% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X11));
% subplot(2,1,2)
% plot(freq_axis,angle(X11));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X21));
% subplot(2,1,2)
% plot(freq_axis,angle(X21));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X31));
% subplot(2,1,2)
% plot(freq_axis,angle(X31));

%% PART2

f5 = 1000;
f6 = 785;

Fs = 20000;
t = 0:1/Fs:1;


x4 = sin(2*pi*f5*t);
x5 = square(2*pi*f5*t);
x6 = sawtooth(2*pi*f5*t,0.5);

% figure;
% plot(t,x4);
% 
% figure;
% plot(t,x5);
% 
% figure;
% plot(t,x6);

%N-Point DFT
N = 1024;

X4 = fftshift(fft(x4(1:N)));
X5 = fftshift(fft(x5(1:N)));
X6 = fftshift(fft(x6(1:N)));

freq_axis = (-N/2:N/2-1)*(Fs/N);

% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X4));
% subplot(2,1,2)
% plot(freq_axis,angle(X4));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X5));
% subplot(2,1,2)
% plot(freq_axis,angle(X5));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X6));
% subplot(2,1,2)
% plot(freq_axis,angle(X6));

% 
% %N-Point DFT
% N = 2048;
% 
% X4 = fftshift(fft(x4(1:N)));
% X5 = fftshift(fft(x5(1:N)));
% X6 = fftshift(fft(x6(1:N)));
% 
% freq_axis = (-N/2:N/2-1)*(Fs/N);
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X4));
% subplot(2,1,2)
% plot(freq_axis,angle(X4));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X5));
% subplot(2,1,2)
% plot(freq_axis,angle(X5));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X6));
% subplot(2,1,2)
% plot(freq_axis,angle(X6));

% %N-Point DFT
% N = 4096;
% 
% X4 = fftshift(fft(x4(1:N)));
% X5 = fftshift(fft(x5(1:N)));
% X6 = fftshift(fft(x6(1:N)));
% 
% freq_axis = (-N/2:N/2-1)*(Fs/N);
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X4));
% subplot(2,1,2)
% plot(freq_axis,angle(X4));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X5));
% subplot(2,1,2)
% plot(freq_axis,angle(X5));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X6));
% subplot(2,1,2)
% plot(freq_axis,angle(X6));


% %N-Point DFT
% N = 8192;
% 
% X4 = fftshift(fft(x4(1:N)));
% X5 = fftshift(fft(x5(1:N)));
% X6 = fftshift(fft(x6(1:N)));
% 
% freq_axis = (-N/2:N/2-1)*(Fs/N);
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X4));
% subplot(2,1,2)
% plot(freq_axis,angle(X4));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X5));
% subplot(2,1,2)
% plot(freq_axis,angle(X5));
% 
% figure;
% subplot(2,1,1);
% plot(freq_axis,abs(X6));
% subplot(2,1,2)
% plot(freq_axis,angle(X6));


%% FIR FILTERING


f7 = 3000;
f8 = 5000;
N = 151;
k = (N+1)/2;

hd = zeros(1,N);

for n=1:N
    if(n-1==k)
        hd(n) = 2*(f8/Fs) - 2*(f7/Fs);
    else
        hd(n) = (sin(2*pi*(f8/Fs)*(n-1-k)) - sin(2*pi*(f7/Fs)*(n-1-k))) / (pi*(n-1-k));

    end
end

w = hamming(N);

filter_des = zeros(1,N);
for i=1:N
    filter_des(i) = hd(i)*w(i);
end

%writematrix(filter_des, 'C:/Users/k2vas/myArray.txt');

[H,W] = freqz(filter_des,1,32768);

 figure;
 subplot(2,1,1);
 plot(W/pi,abs(H));
 subplot(2,1,2);
 plot(W/pi,unwrap(angle(H)));


 x = cos(2*pi*200*t) + cos(2*pi*2000*t) + cos(2*pi*4000*t) + cos(2*pi*1250*t);

outputsignal = filter(filter_des,[1],x);

N = 1024;

X = fftshift(fft(x(1:N)));
Y = fftshift(fft(outputsignal(1:N)));

freq_axis = (-N/2:N/2-1)*(Fs/N);

figure;
subplot(2,1,1);
plot(t,x);
subplot(2,1,2);
plot(t,outputsignal);

figure;
subplot(2,1,1);
plot(freq_axis,abs(X));
title('input');
subplot(2,1,2);
plot(freq_axis,abs(Y));
title('output');
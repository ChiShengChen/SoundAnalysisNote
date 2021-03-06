clc;
clear;
close all;

[y, fs] = audioread('H-JASCOAMARHY.mp3'); %MATLAB 來直接讀取音檔
y=y(:,1);%只取??道作分析，如果你想分析另外一??道，?改成y=y(:,2)
%sound(y, fs);	% 播放此音訊
time=(1:length(y))/fs;	% 時間軸的向量
plot(time, y);	% 畫出時間軸上的波形



X = fft(y);
magX=abs(X);
angX=angle(X);
K = fft(X);
L = fft(K);
M = fft(L);
N = fft(M);
O = fft(N);
P = fft(O);
Q = fft(P);
R = fft(Q);

subplot(331); %subplot(nnk(圖形視窗n*n中的第k張圖));
plot(y);title('原始波形');
%fprintf('原始波形值 = %s\n', y);

subplot(332);
plot(X); title('原始頻譜');
%fprintf('原始波形值 = %s\n', X);

subplot(333);
plot(K);title('FFT頻譜');
%fprintf('原始波形值 = %s\n', magX);

subplot(334);
plot(L);title('FFT2頻譜');
%fprintf('原始波形值 = %s\n', angX);

subplot(335);
plot(M);title('FFT3頻譜');

subplot(336);
plot(N);title('FFT4頻譜');

subplot(337);
plot(O);title('FFT5頻譜');

subplot(338);
plot(P);title('FFT6頻譜');

subplot(339);
plot(Q);title('FFT7頻譜');


fileName='H-JASCOAMARHY.mp3';
info=audioinfo(fileName);
fprintf('檔案名稱 = %s\n', info.Filename);
fprintf('壓縮方式 = %s\n', info.CompressionMethod);
fprintf('通道個數 = %g 個\n', info.NumChannels);
fprintf('取樣頻率 = %g Hz\n', info.SampleRate);
fprintf('取樣點總個數 = %g 個\n', info.TotalSamples);
fprintf('音訊長度 = %g 秒\n', info.Duration);
%fprintf('取樣點解析度 = %g 位元/取樣點\n', info.BitsPerSample);




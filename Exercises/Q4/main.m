% Clear command and workspace
clc;
clear;
rng('default');  % For reproducibility

%%%%%%%%% Part (a) %%%%%%%%%
% Loading 'man.gif' image file
manImage = imread('data/man.gif');

% Convert matrix image into a vector 
timeDomain = manImage(:);

% Convert type 'uint8' to 'double'.
Xn = double(timeDomain);

% Normalization
max_Xn = max(Xn);
Xn = Xn/max_Xn;

%%%%%%%%% Part (b) %%%%%%%%%
% Finding the Fourier transform
Xf = fft(Xn);

% Plot the magnitude response of X(f)
length_Xf = length(Xf);
Xf_abs = abs(Xf);
centered_Xf = [Xf_abs(length_Xf/2+1:end); Xf_abs(1:length_Xf/2)];
figure, plot((-(length_Xf/2):(length_Xf/2)-1), centered_Xf);

%%%%%%%%% Part (c) %%%%%%%%%
 % Compute energy
total_E = sum(Xf_abs.^2);
Ems = zeros((length_Xf/2)-1,1);
Ems(1) = Xf_abs(1)^2;
for i=2:(length_Xf/2)-1
    Ems(i)=Ems(i-1)+2*Xf_abs(i)^2;
end
E_ratio=Ems/total_E;

alphas = [0.9, 0.95, 0.99];
figure, tiledlayout(3,3);

for alpha = alphas
    % Compute bandwidth
    cutOff_freq = length(E_ratio(E_ratio<alpha));
    
    % Sampling the signal
    sampling_rate = (2*cutOff_freq)/length(Xn);
    sampling_interval = floor(1/sampling_rate);
    indexs = (1:sampling_interval:length_Xf);
    Xs_n = Xn(indexs);
    
    %%% Interpolation method 1 -- replace by nearest neighbor
    xHat_1 = interp1(indexs, Xs_n, (1: length_Xf),'nearest');
    hat_image_1 = uint8(max_Xn*reshape(xHat_1,sqrt(length(Xn)),sqrt(length(Xn))));
    
    %%% Interpolation method 2 -- linear interpolation
    xHat_2 = interp1(indexs, Xs_n, (1: length_Xf),'linear');
    hat_image_2 = uint8(max_Xn*reshape(xHat_2,sqrt(length(Xn)),sqrt(length(Xn))));
    
    % Diplay the images
    nexttile
    imagesc(manImage); colormap('gray')
    title('Orginal Image');
    
    nexttile
    imagesc(hat_image_1); colormap('gray')
    title("Nearest Neighbor (alpha="+num2str(alpha)+")");

    nexttile
    imagesc(hat_image_2); colormap('gray')
    title("Linear (alpha="+num2str(alpha)+")");
end



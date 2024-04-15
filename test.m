ncfile = '/home/rushil/Desktop/BTP-1/BTP1/INM-CM4-8/zmla_Eday_INM-CM4-8_amip_r1i1p1f1_gr1_19790101-19881231.nc';
info = ncinfo(ncfile);

% Read variables
lat = ncread(ncfile, 'lat'); % Latitude
lon = ncread(ncfile, 'lon'); % Longitude
time = ncread(ncfile, 'time'); % Time
zmla = ncread(ncfile, 'zmla'); % Variable of interest

% Choose a specific time index or average over time
% For example, if you want to plot zmla at time index 1
time_index = 1;
zmla_at_time = zmla(:,:,time_index);

% Plot zmla against latitude and longitude
figure;
imagesc(lon, lat, zmla_at_time);
colorbar;
xlabel('Longitude');
ylabel('Latitude');
title(['zmla at time: ', num2str(time(time_index))]); % Display the time index or actual time

% If you want to customize the plot further, you can use other plotting functions
% For example:
% contourf(lon, lat, zmla_at_time);
% shading flat;
% colorbar;
% xlabel('Longitude');
% ylabel('Latitude');
% title(['zmla at time: ', num2str(time(time_index))]);
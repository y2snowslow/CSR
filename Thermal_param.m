% Vds_Ids = [0, 1.1, 1.3, 1.45, 1.75, 2.25, 2.7;...
%     0, 1, 1.15, 1.35, 1.7, 2.35, 3]; % 
Vds_Ids = [0, 0.05, 0.25, 0.5, 1.0, 2.0, 3.0;
    0, 0.05, 0.25, 0.5, 1.0, 2.0, 3.0]; %

Eon_Ids = [0, .29, 1.43, 2.86, 5.71, 13.14, 22.86;...
    0, .57, 2.63, 5.14, 10.29, 20.57, 30.29] * 1e-3; %J

Eoff_Ids = [0, .21, 1.07, 2.14, 4.29, 9.86, 17.14;...
    0, .43, 1.97, 3.86, 7.71, 15.43, 22.71] * 1e-3; %J

Tj_map = [25, 125] ; %℃

Ids_map = [0, 10, 50, 100, 200, 400, 600]; %A

If_Vf = [.07, .12, .19, 1.75, 4.24, 7.32, 11.2; .16, .3, .72, 2.14, 4.02, 6.35, 9.12];

Vf_map  = [.5, .7, .9, 1.3, 1.7, 2.1, 2.5];

Vds_nominal = 300;


sample_time = 1e-6;


%描画
subplot 511
plot(Ids_map,Vds_Ids);
legend({'25','125'}); %Todo Tj_mapだけを参照すればいいよう変更したい
title Vds

subplot 512
plot(Ids_map,Eon_Ids*1e3);
legend({'25','125'}); %Todo Tj_mapだけを参照すればいいよう変更したい
title  Eon(mJ)

subplot 513
plot(Ids_map,Eoff_Ids*1e3);
legend({'25','125'}); %Todo Tj_mapだけを参照すればいいよう変更したい
title  Eoff(mJ)

subplot 514
plot(Vf_map,If_Vf);
legend({'25','125'}); %Todo Tj_mapだけを参照すればいいよう変更したい
title  Vf(V)
% subplot 515
% plot(Ids_map,Err_Ids);
% 


% temp_legend = []
% for i = Tj_map 
%     temp_legend.add(i)
% end

% legend(Tj_map(1));
% plot(Ids_map,Eon_Ids);


%% 
table = ee_getPowerLossSummary(simlog,0.0,0.02)


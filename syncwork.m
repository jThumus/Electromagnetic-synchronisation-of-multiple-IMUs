mmm1 = readmatrix("mag1.csv");
ma1(:) = sqrt(mmm1(:,4).^2+mmm1(:,5).^2+mmm1(:,6).^2);
mb1(:) = abs(mmm1(:,4))+abs(mmm1(:,5))+abs(mmm1(:,6));
aaa1 = readmatrix("acc1.csv");
aa1(:) = sqrt(aaa1(:,4).^2+aaa1(:,5).^2+aaa1(:,6).^2);
ab1(:) = abs(aaa1(:,4))+abs(aaa1(:,5))+abs(aaa1(:,6));
ggg1 = readmatrix("gyro1.csv");
ga1(:) = sqrt(ggg1(:,4).^2+ggg1(:,5).^2+ggg1(:,6).^2);
gb1(:) = abs(ggg1(:,4))+abs(ggg1(:,5))+abs(ggg1(:,6));

mmm2 = readmatrix("mag2.csv");
ma2(:) = sqrt(mmm2(:,4).^2+mmm2(:,5).^2+mmm2(:,6).^2);
mb2(:) = abs(mmm2(:,4))+abs(mmm2(:,5))+abs(mmm2(:,6));
aaa2 = readmatrix("acc2.csv");
aa2(:) = sqrt(aaa2(:,4).^2+aaa2(:,5).^2+aaa2(:,6).^2);
ab2(:) = abs(aaa2(:,4))+abs(aaa2(:,5))+abs(aaa2(:,6));
ggg2 = readmatrix("gyro2.csv");
ga2(:) = sqrt(ggg2(:,4).^2+ggg2(:,5).^2+ggg2(:,6).^2);
gb2(:) = abs(ggg2(:,4))+abs(ggg2(:,5))+abs(ggg2(:,6));

mmm3 = readmatrix("mag3.csv");
ma3(:) = sqrt(mmm3(:,4).^2+mmm3(:,5).^2+mmm3(:,6).^2);
mb3(:) = abs(mmm3(:,4))+abs(mmm3(:,5))+abs(mmm3(:,6));
aaa3 = readmatrix("acc3.csv");
aa3(:) = sqrt(aaa3(:,4).^2+aaa3(:,5).^2+aaa3(:,6).^2);
ab3(:) = abs(aaa3(:,4))+abs(aaa3(:,5))+abs(aaa3(:,6));
ggg3 = readmatrix("gyro3.csv");
ga3(:) = sqrt(ggg3(:,4).^2+ggg3(:,5).^2+ggg3(:,6).^2);
gb3(:) = abs(ggg3(:,4))+abs(ggg3(:,5))+abs(ggg3(:,6));

mmm4 = readmatrix("mag4.csv");
ma4(:) = sqrt(mmm4(:,4).^2+mmm4(:,5).^2+mmm4(:,6).^2);
mb4(:) = abs(mmm4(:,4))+abs(mmm4(:,5))+abs(mmm4(:,6));
aaa4 = readmatrix("acc4.csv");
aa4(:) = sqrt(aaa4(:,4).^2+aaa4(:,5).^2+aaa4(:,6).^2);
ab4(:) = abs(aaa4(:,4))+abs(aaa4(:,5))+abs(aaa4(:,6));
ggg4 = readmatrix("gyro4.csv");
ga4(:) = sqrt(ggg4(:,4).^2+ggg4(:,5).^2+ggg4(:,6).^2);
gb4(:) = abs(ggg4(:,4))+abs(ggg4(:,5))+abs(ggg4(:,6));
%% mag 1 sync
figure;
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("First sync window, magnetometer, EMP event",'FontSize', 16);
ylabel("Amplitude (micro-teslas)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([-0.5 7.5]);
%% mag 1 no sync
figure;
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("First sync window, magnetometer, RTC only",'FontSize', 16);
ylabel("Amplitude (micro-teslas)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([-0.5 7.5]);
%% mag 2 sync
figure;
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("Second sync window, magnetometer, EMP event",'FontSize', 16);
ylabel("Amplitude (micro-teslas)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([3772 3780]);
%% mag 2 no sync
figure;
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("Second sync window, magnetometer, RTC only",'FontSize', 16);
ylabel("Amplitude (micro-teslas)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([3772 3780]);
%% mag 1 close sync
figure;
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("First sync (first pulse), magnetometer, EMP event",'FontSize', 16);
ylabel("Amplitude (micro-teslas)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([-0.25 1.25]);
%% mag 1 close no sync
figure;
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("First sync (first pulse), magnetometer, RTC only",'FontSize', 16);
ylabel("Amplitude (micro-teslas)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([-0.25 1.25]);
%% mag 2 close sync
figure;
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("Second sync (first pulse), magnetometer, EMP event",'FontSize', 16);
ylabel("Amplitude (micro-teslas)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([3772.25 3773.75]);
%% mag 2 close no sync
figure;
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("Second sync (first pulse), magnetometer, RTC only",'FontSize', 16);
ylabel("Amplitude (micro-teslas)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([3772.25 3773.75]);
%% acc 1 sync
figure;
hold on
plot(aaa1(:,3)-224.168, aa1,((aaa2(:,3)+43.399)-224.168)*1.000059949,aa2);
plot(((aaa3(:,3)+74.847)-224.168)*1.0000400357,aa3);
plot(((aaa4(:,3)-39.742)-224.168)*1.0000400381,aa4);
title("First sync window, accelerometer, kinetic event",'FontSize', 16);
ylabel("Amplitude (g)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([54 55.5]);
%% acc 1 no sync
figure;
hold on
plot((aaa1(:,1)-aaa1(1,1))/1000-224.168, aa1,(aaa2(:,1)-aaa1(1,1))/1000-224.168,aa2);
plot((aaa3(:,1)-aaa1(1,1))/1000-224.168,aa3);
plot((aaa4(:,1)-aaa1(1,1))/1000-224.168,aa4);
title("First sync window, accelerometer, RTC only",'FontSize', 16);
ylabel("Amplitude (g)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([54 55.5]);
%% acc 2 sync
figure;
hold on
plot(aaa1(:,3)-224.168, aa1,((aaa2(:,3)+43.399)-224.168)*1.000059949,aa2);
plot(((aaa3(:,3)+74.847)-224.168)*1.0000400357,aa3);
plot(((aaa4(:,3)-39.742)-224.168)*1.0000400381,aa4);
title("Second sync window, accelerometer, Kinetic event",'FontSize', 16);
ylabel("Amplitude (g)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([3823.5 3825]);
%% acc 2 no sync
figure;
hold on
plot((aaa1(:,1)-aaa1(1,1))/1000-224.168, aa1,(aaa2(:,1)-aaa1(1,1))/1000-224.168,aa2);
plot((aaa3(:,1)-aaa1(1,1))/1000-224.168,aa3);
plot((aaa4(:,1)-aaa1(1,1))/1000-224.168,aa4);
title("Second sync window, accelerometer, RTC only",'FontSize', 16);
ylabel("Amplitude (g)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([3823.5 3825]);
%% gyro 1 sync
figure;
hold on
plot(ggg1(:,3)-224.168, ga1,((ggg2(:,3)+43.399)-224.168)*1.000059949,ga2);
plot(((ggg3(:,3)+74.847)-224.168)*1.0000400357,ga3);
plot(((ggg4(:,3)-39.742)-224.168)*1.0000400381,ga4);
title("First sync window, gyroscope, kinetic event",'FontSize', 16);
ylabel("Amplitude (g)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([54 55.5]);
%% gyro 1 no sync
figure;
hold on
plot((ggg1(:,1)-ggg1(1,1))/1000-224.168, ga1,(ggg2(:,1)-ggg1(1,1))/1000-224.168,ga2);
plot((ggg3(:,1)-ggg1(1,1))/1000-224.168,ga3);
plot((ggg4(:,1)-ggg1(1,1))/1000-224.168,ga4);
title("First sync window, gyroscope, RTC only",'FontSize', 16);
ylabel("Amplitude (g)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([54 55.5]);
%% gyro 2 sync
figure;
hold on
plot(ggg1(:,3)-224.168, ga1,((ggg2(:,3)+43.399)-224.168)*1.000059949,ga2);
plot(((ggg3(:,3)+74.847)-224.168)*1.0000400357,ga3);
plot(((ggg4(:,3)-39.742)-224.168)*1.0000400381,ga4);
title("Second sync window, gyroscope, Kinetic event",'FontSize', 16);
ylabel("Amplitude (degrees/s)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([3823.5 3825]);
%% gyro 2 no sync
figure;
hold on
plot((ggg1(:,1)-ggg1(1,1))/1000-224.168, ga1,(ggg2(:,1)-ggg1(1,1))/1000-224.168,ga2);
plot((ggg3(:,1)-ggg1(1,1))/1000-224.168,ga3);
plot((ggg4(:,1)-ggg1(1,1))/1000-224.168,ga4);
title("Second sync window, gyroscope, RTC only",'FontSize', 16);
ylabel("Amplitude (degree/s)",'FontSize', 14);
xlabel("Epoch Time (s)",'FontSize', 14);
% p1(1).LineWidth = 2;
% p1(2).LineWidth = 2;
% p2.LineWidth = 2;
% p3.LineWidth = 2;
xlim([3823.5 3825]);
%% first sync window before sync
figure;
t = tiledlayout(3,1,'TileSpacing','Compact');
%xlabel(t,"Elapsed time (s)");
nexttile
hold on
plot((aaa1(:,1)-aaa1(1,1))/1000-224.168, aa1,(aaa2(:,1)-aaa1(1,1))/1000-224.168,aa2);
plot((aaa3(:,1)-aaa1(1,1))/1000-224.168,aa3);
plot((aaa4(:,1)-aaa1(1,1))/1000-224.168,aa4);
title("Accelerometer kinetic event",'FontSize', 10);
%%ylabel("Amplitude (g)",'FontSize', 10);
xlim([54 55.5]);

nexttile
hold on
plot((ggg1(:,1)-ggg1(1,1))/1000-224.168, ga1,(ggg2(:,1)-ggg1(1,1))/1000-224.168,ga2);
plot((ggg3(:,1)-ggg1(1,1))/1000-224.168,ga3);
plot((ggg4(:,1)-ggg1(1,1))/1000-224.168,ga4);
title("Gyroscope kinetic event",'FontSize', 10);
%ylabel("Amplitude (degree/s)",'FontSize', 10);
xlim([54 55.5]);

nexttile
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("Magnetometer EMP event",'FontSize', 10);
%ylabel("Amplitude (micro-teslas)",'FontSize', 10);
xlim([-0.5 7.5]);
%% first sync composite plot
figure;

t = tiledlayout(4,2,'TileSpacing','Compact');
xlabel(t, "Elapsed Time (s)",'FontSize', 10);
title(t, "First synchronisation window",'FontSize', 12);

nexttile %%acc no sync
hold on
plot((aaa1(:,1)-aaa1(1,1))/1000-224.168, aa1,(aaa2(:,1)-aaa1(1,1))/1000-224.168,aa2);
plot((aaa3(:,1)-aaa1(1,1))/1000-224.168,aa3);
plot((aaa4(:,1)-aaa1(1,1))/1000-224.168,aa4);
title("A",'FontSize', 10);
xlim([54 55.5]);

nexttile %%acc sync
hold on
plot(aaa1(:,3)-224.168, aa1,((aaa2(:,3)+43.399)-224.168)*1.000059949,aa2);
plot(((aaa3(:,3)+74.847)-224.168)*1.0000400357,aa3);
plot(((aaa4(:,3)-39.742)-224.168)*1.0000400381,aa4);
title("B",'FontSize', 10);
xlim([54 55.5]);

nexttile %%gyro no sync
hold on
plot((ggg1(:,1)-ggg1(1,1))/1000-224.168, ga1,(ggg2(:,1)-ggg1(1,1))/1000-224.168,ga2);
plot((ggg3(:,1)-ggg1(1,1))/1000-224.168,ga3);
plot((ggg4(:,1)-ggg1(1,1))/1000-224.168,ga4);
title("C",'FontSize', 10);
xlim([54 55.5]);

nexttile %%gyro sync 
hold on
plot(ggg1(:,3)-224.168, ga1,((ggg2(:,3)+43.399)-224.168)*1.000059949,ga2);
plot(((ggg3(:,3)+74.847)-224.168)*1.0000400357,ga3);
plot(((ggg4(:,3)-39.742)-224.168)*1.0000400381,ga4);
title("D",'FontSize', 10);
xlim([54 55.5]);

nexttile %%mag no sync
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("E",'FontSize', 10);
xlim([-0.5 7.5]);

nexttile %%mag sync
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("F",'FontSize', 10);
xlim([-0.5 7.5]);

nexttile %%mag closeup no sync
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("G",'FontSize', 10);
xlim([-0.25 1.25]);

nexttile %%mag closeup sync
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("H",'FontSize', 10);
xlim([-0.25 1.25]);
%% second sync composite plot
figure;
t = tiledlayout(4,2,'TileSpacing','Compact');
xlabel(t, "Elapsed Time (s)",'FontSize', 10);
title(t, "Second synchronisation window",'FontSize', 12);

nexttile %% acc no sync
hold on
plot((aaa1(:,1)-aaa1(1,1))/1000-224.168, aa1,(aaa2(:,1)-aaa1(1,1))/1000-224.168,aa2);
plot((aaa3(:,1)-aaa1(1,1))/1000-224.168,aa3);
plot((aaa4(:,1)-aaa1(1,1))/1000-224.168,aa4);
title("A",'FontSize', 10);
xlim([3823.5 3825]);

nexttile %% acc sync
hold on
plot(aaa1(:,3)-224.168, aa1,((aaa2(:,3)+43.399)-224.168)*1.000059949,aa2);
plot(((aaa3(:,3)+74.847)-224.168)*1.0000400357,aa3);
plot(((aaa4(:,3)-39.742)-224.168)*1.0000400381,aa4);
title("B",'FontSize', 10);
xlim([3823.5 3825]);

nexttile %% gyro no sync
hold on
plot((ggg1(:,1)-ggg1(1,1))/1000-224.168, ga1,(ggg2(:,1)-ggg1(1,1))/1000-224.168,ga2);
plot((ggg3(:,1)-ggg1(1,1))/1000-224.168,ga3);
plot((ggg4(:,1)-ggg1(1,1))/1000-224.168,ga4);
title("C",'FontSize', 10);
xlim([3823.5 3825]);

nexttile %%gyro sync
hold on
plot(ggg1(:,3)-224.168, ga1,((ggg2(:,3)+43.399)-224.168)*1.000059949,ga2);
plot(((ggg3(:,3)+74.847)-224.168)*1.0000400357,ga3);
plot(((ggg4(:,3)-39.742)-224.168)*1.0000400381,ga4);
title("D",'FontSize', 10);
xlim([3823.5 3825]);

nexttile %% mag no sync
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("E",'FontSize', 10);
xlim([3772 3780]);

nexttile %%mag sync
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("F",'FontSize', 10);
xlim([3772 3780]);

nexttile %%mag close no sync
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("G",'FontSize', 10);
xlim([3772.25 3773.75]);

nexttile %% mag close sync
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("H",'FontSize', 10);
xlim([3772.25 3773.75]);
%% combined sync composite plot
figure;

t = tiledlayout(4,2,'TileSpacing','Compact');
xlabel(t, "Elapsed Time (s)",'FontSize', 10);
title(t, "Kinetic and EMP events",'FontSize', 12);

nexttile %%acc no sync
hold on
plot((aaa1(:,1)-aaa1(1,1))/1000-224.168, aa1,(aaa2(:,1)-aaa1(1,1))/1000-224.168,aa2);
plot((aaa3(:,1)-aaa1(1,1))/1000-224.168,aa3);
plot((aaa4(:,1)-aaa1(1,1))/1000-224.168,aa4);
title("A",'FontSize', 10);
xlim([54 55.5]);


nexttile %%acc sync
hold on
plot(aaa1(:,3)-224.168, aa1,((aaa2(:,3)+43.399)-224.168)*1.000059949,aa2);
plot(((aaa3(:,3)+74.847)-224.168)*1.0000400357,aa3);
plot(((aaa4(:,3)-39.742)-224.168)*1.0000400381,aa4);
title("B",'FontSize', 10);
xlim([54 55.5]);

nexttile %%mag closeup no sync
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("C",'FontSize', 10);
xlim([-0.25 1.25]);

nexttile %%mag closeup sync
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("D",'FontSize', 10);
xlim([-0.25 1.25]);

nexttile %% acc no sync
hold on
plot((aaa1(:,1)-aaa1(1,1))/1000-224.168, aa1,(aaa2(:,1)-aaa1(1,1))/1000-224.168,aa2);
plot((aaa3(:,1)-aaa1(1,1))/1000-224.168,aa3);
plot((aaa4(:,1)-aaa1(1,1))/1000-224.168,aa4);
title("E",'FontSize', 10);
xlim([3823.5 3825]);

nexttile %% acc sync
hold on
plot(aaa1(:,3)-224.168, aa1,((aaa2(:,3)+43.399)-224.168)*1.000059949,aa2);
plot(((aaa3(:,3)+74.847)-224.168)*1.0000400357,aa3);
plot(((aaa4(:,3)-39.742)-224.168)*1.0000400381,aa4);
title("F",'FontSize', 10);
xlim([3823.5 3825]);

nexttile %%mag close no sync
hold on
p1 = plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
p2 = plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
p3 = plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title("G",'FontSize', 10);
xlim([3772.25 3773.75]);

nexttile %% mag close sync
hold on
p1 = plot(mmm1(:,3)-224.168, ma1,((mmm2(:,3)+43.399)-224.168)*1.000059949,ma2);
p2 = plot(((mmm3(:,3)+74.847)-224.168)*1.0000400357,ma3);
p3 = plot(((mmm4(:,3)-39.742)-224.168)*1.0000400381,ma4);
title("H",'FontSize', 10);
xlim([3772.25 3773.75]);

lgd = legend("Device 1", "Device 2", "Device 3", "Device 4", 'FontSize', 10);
lgd.Layout.Tile = 'east';

%% raw data composite plot
t2= tiledlayout(3,1);

% Top plot
nexttile
hold on
plot((aaa1(:,1)-aaa1(1,1))/1000-224.168, aa1,(aaa2(:,1)-aaa1(1,1))/1000-224.168,aa2);
plot((aaa3(:,1)-aaa1(1,1))/1000-224.168,aa3);
plot((aaa4(:,1)-aaa1(1,1))/1000-224.168,aa4);
title('Accelerometer Raw Data')
ylabel("Magnitude (g)",'FontSize', 10);
xlim([0 4000]);
ylim([0 3]);

nexttile
hold on
plot((ggg1(:,1)-ggg1(1,1))/1000-224.168, ga1,(ggg2(:,1)-ggg1(1,1))/1000-224.168,ga2);
plot((ggg3(:,1)-ggg1(1,1))/1000-224.168,ga3);
plot((ggg4(:,1)-ggg1(1,1))/1000-224.168,ga4);
title('Gyroscope Raw Data')
ylabel("Magnitude (degree/s)",'FontSize', 10);
xlim([0 4000]);
ylim([0 1000]);

nexttile
hold on
plot((mmm1(:,1)-mmm1(1,1))/1000-224.168, ma1,(mmm2(:,1)-mmm1(1,1))/1000-224.168,ma2);
plot((mmm3(:,1)-mmm1(1,1))/1000-224.168,ma3);
plot((mmm4(:,1)-mmm1(1,1))/1000-224.168,ma4);
title('Magnetometer Raw Data')
ylabel("Magnitude (\mu-teslas)",'FontSize', 10);
xlabel(t2, "Elapsed Time (s)",'FontSize', 10);
xlim([0 4000]);
ylim([0 0.00035]);

lgd = legend("Device 1", "Device 2", "Device 3", "Device 4", 'FontSize', 10);
lgd.NumColumns = 4;
lgd.Layout.Tile = 'south';
% plot(mmm1(:,3), ma1, mmm2(:,3),ma2,mmm3(:,3), ma3, mmm4(:,3),ma4,aaa1(:,3), aa1, aaa2(:,3),aa2,aaa3(:,3), aa3, aaa4(:,3),aa4);
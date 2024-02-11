IMU1, IMU2 are magnetometer data
IMU1A, IMU2A are accelerometer data

first import them into workspace,
run IMU_experiment.m
run jieduan.m to detect amplitude and focus on events (events always happen at index 31)
run jieduan_plot.m to plot the figure of measured data and predict data (magnetometer)
run jieduan_plot_A.m to plot accelerometer data

the structure of data, for example: truncated_Time{1,3}{1,2} means the timestamp of second SYNC in IMU3 correspond to magnetometer data. truncated_Time_A{1,1}{1,2} means the timestamp of first SYNC in IMU1 correspond to acceletometer data. truncated_M, truncated_A are the data themselves. truncated_M and runcated_Time share the same index, and the other two as well.

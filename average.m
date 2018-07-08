arg_list = argv();
filename = arg_list{1};
data_file = importdata(filename);
data = data_file(3:102);
m = mean(data);
fid = fopen(filename, "a");
fprintf(fid, "%f\n", m);
fclose(fid);
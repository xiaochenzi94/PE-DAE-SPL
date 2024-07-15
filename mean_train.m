function data_norm_train10_opt = mean_train(data_norm_train10,mean_data_norm_train,randomIndex1)
    mean_data_norm_train11 = mean_data_norm_train;
    mean_data_norm_train10 = mean_data_norm_train;
    mean_data_norm_train10(randomIndex1) = 0;
    mean_data_norm_train11 = mean_data_norm_train11 - mean_data_norm_train10;
    data_norm_train10_opt = data_norm_train10 +mean_data_norm_train11;
end
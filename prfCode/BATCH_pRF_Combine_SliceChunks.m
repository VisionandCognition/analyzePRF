Ms={'danny','eddy'};
Ss={'linhrf_cv1_dhrf', 'linhrf_cv1_mhrf',...
    'doghrf_cv1_dhrf','doghrf_cv1_mhrf'};

for m=1:length(Ms)
    fprintf(['MONKEY: ' Ms{m} '\n']);
    for s=1:length(Ss)
        pRF_Combine_SliceChunks_cv(Ms{m},Ss{s});
    end
end
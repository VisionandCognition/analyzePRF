% CreateParallel Bash scripts for pRF fitting on LISA
joblist.monkey = 'danny';
joblist.sessions = {...
    '20171116',[];... 1
    '20171129',[6];... 2
    '20171207',[];... 3
    '20171214',[8];... 4
    '20171220',[];... 5
    '20180117',[8];... 6
    '20180124',[];... 7
    '20180125',[6];... 8
    '20180131',[10];... 9
    '20180201',[10]...  10
    };%[1:10]; % SESSION nWorkers
joblist.sessinc = 1:10; 
joblist.slicechunks = {'01:14','15:28','29:42','43:56'}; % 2 digits, leading zero!
joblist.type = 'us_reg';

parallel_fun_dir    = '$TMPDIR/PRF/'; %$TMPDIR is fast 'scratch' space
parallel_fun        = 'pRF_FitModel_LISA';
job_name            = 'FitPRF_PerSession';

disp('== Running create_parallel_LISA ==')

pRF_CreateParallel4LISA_worker(parallel_fun, joblist, parallel_fun_dir, job_name)

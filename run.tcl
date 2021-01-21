set_db init_lib_search_path /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/timing

set_db script_search_path /mnt/scratch_b/users/a/aavlachos/myscripts

set_db init_hdl_search_path /mnt/scratch_b/users/a/aavlachos/vfiles 

set_db library fast_vdd1v0_basicCells.lib

set_db interconnect_mode wireload 

read_hdl AES_original.v

elaborate AES_ENC

check_design

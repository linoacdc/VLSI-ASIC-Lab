# Cadence Genus(TM) Synthesis Solution, Version 19.11-s087_1, built Aug 13 2019 11:48:07

# Date: Thu Jan 21 22:34:13 2021
# Host: cn2.it.auth.gr (x86_64 w/Linux 3.10.0-1160.6.1.el7.x86_64) (10cores*20cpus*2physical cpus*Intel(R) Xeon(R) CPU E5-2630 v4 @ 2.20GHz 25600KB)
# OS:   CentOS Linux release 7.9.2009 (Core)

source run.tcl
read_sdc constraints.sdc
check_timing_intent
syn_generic
syn_map
syn_opt
check_timing_intent
report_area
report_gates
report_timing
report_timing_summary
report_power
write_hdl > design.v
write_script > constraints.g
write_sdc > constraints.sdc
write_sdc > constraintsAll.sdc
write_design -innovus AES_ENC
write_template -outfile template.g
report
report_analysis_views
report_case_analysis
report_qor
report_qor > report_qor1
quit

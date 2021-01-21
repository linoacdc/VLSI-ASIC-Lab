create_clock -name clk -period 4 -waveform {0 2} [get_ports CLK] 
#[get_pins -hierarchical -filter "is_clock_pin==true"]

set_clock_latency  0.4 [get_clocks clk] 

set_clock_uncertainty  0.3 [get_clocks clk]

set_clock_transition 0.04 [get_clocks clk]

set_output_delay -clock clk -max -network_latency_included 1 [all_outputs]

set_output_delay -clock clk -min -network_latency_included 0.1 [all_outputs]

set_load -max 0.5 [all_outputs]

set_load -min 0.01 [all_outputs]

set_input_delay -clock clk -max -network_latency_included 1 [all_inputs -no_clocks] 

set_input_delay -clock clk -min -network_latency_included 0.1 [all_inputs -no_clocks]

set_driving_cell -max -lib_cell BUFX2 [all_inputs]

set_driving_cell -min -lib_cell BUFX16 [all_inputs]



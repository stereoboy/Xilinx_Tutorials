vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 \
"../../../../../src/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_1_clk_ibuf.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_1_infrastructure.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_1_iodelay_ctrl.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_1_tempmon.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_arb_mux.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_arb_row_col.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_arb_select.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_bank_cntrl.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_bank_common.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_bank_compare.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_bank_mach.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_bank_queue.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_bank_state.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_col_mach.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_mc.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_rank_cntrl.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_rank_common.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_rank_mach.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_1_round_robin_arb.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_1_ecc_buf.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_1_ecc_dec_fix.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_1_ecc_gen.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_1_ecc_merge_enc.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_1_fi_xor.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_1_memc_ui_top_std.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_1_mem_intfc.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_byte_group_io.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_byte_lane.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_calib_top.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_if_post_fifo.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_mc_phy.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_mc_phy_wrapper.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_of_pre_fifo.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_4lanes.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_dqs_found_cal.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_dqs_found_cal_hr.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_init.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_cntlr.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_data.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_edge.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_lim.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_mux.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_po_cntlr.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_samp.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_oclkdelay_cal.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_prbs_rdlvl.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_rdlvl.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_tempmon.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrcal.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrlvl.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrlvl_off_delay.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_prbs_gen.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_poc_cc.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_poc_edge_store.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_poc_meta.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_poc_pd.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_poc_tap_base.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_poc_top.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_1_ui_cmd.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_1_ui_rd_data.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_1_ui_top.v" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_1_ui_wr_data.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../../src/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_top.vhd" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ddr_mig_sim.vhd" \
"../../../../../src/ip/ddr/ddr/user_design/rtl/ddr.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


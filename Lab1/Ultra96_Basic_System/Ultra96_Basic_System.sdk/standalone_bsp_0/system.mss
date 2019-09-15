
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 6.8
 PARAMETER PROC_INSTANCE = psu_cortexa53_0
 PARAMETER stdin = psu_uart_1
 PARAMETER stdout = psu_uart_1
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu_cortexa53
 PARAMETER DRIVER_VER = 1.5
 PARAMETER HW_INSTANCE = psu_cortexa53_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = scugic
 PARAMETER DRIVER_VER = 3.10
 PARAMETER HW_INSTANCE = psu_acpu_gic
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_adma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_adma_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_adma_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_adma_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_adma_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_adma_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_adma_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_adma_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_afi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_afi_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_afi_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_afi_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_afi_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_afi_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_afi_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sysmonpsu
 PARAMETER DRIVER_VER = 2.5
 PARAMETER HW_INSTANCE = psu_ams
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axipmon
 PARAMETER DRIVER_VER = 6.7
 PARAMETER HW_INSTANCE = psu_apm_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axipmon
 PARAMETER DRIVER_VER = 6.7
 PARAMETER HW_INSTANCE = psu_apm_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axipmon
 PARAMETER DRIVER_VER = 6.7
 PARAMETER HW_INSTANCE = psu_apm_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axipmon
 PARAMETER DRIVER_VER = 6.7
 PARAMETER HW_INSTANCE = psu_apm_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_apu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_cci_gpv
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_cci_reg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = coresightps_dcc
 PARAMETER DRIVER_VER = 1.4
 PARAMETER HW_INSTANCE = psu_coresight_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = resetps
 PARAMETER DRIVER_VER = 1.2
 PARAMETER HW_INSTANCE = psu_crf_apb
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_crl_apb
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = csudma
 PARAMETER DRIVER_VER = 1.3
 PARAMETER HW_INSTANCE = psu_csudma
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ctrl_ipi
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ddr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ddr_phy
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ddr_qos_ctrl
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ddr_xmpu0_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ddr_xmpu1_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ddr_xmpu2_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ddr_xmpu3_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ddr_xmpu4_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ddr_xmpu5_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ddrcpsu
 PARAMETER DRIVER_VER = 1.1
 PARAMETER HW_INSTANCE = psu_ddrc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = avbuf
 PARAMETER DRIVER_VER = 2.2
 PARAMETER HW_INSTANCE = psu_dp
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dpdma
 PARAMETER DRIVER_VER = 1.1
 PARAMETER HW_INSTANCE = psu_dpdma
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_efuse
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_fpd_gpv
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_fpd_slcr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_fpd_slcr_secure
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_fpd_xmpu_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_fpd_xmpu_sink
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_gdma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_gdma_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_gdma_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_gdma_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_gdma_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_gdma_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_gdma_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_gdma_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpiops
 PARAMETER DRIVER_VER = 3.4
 PARAMETER HW_INSTANCE = psu_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_gpu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iicps
 PARAMETER DRIVER_VER = 3.8
 PARAMETER HW_INSTANCE = psu_i2c_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_iou_scntr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_iou_scntrs
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_iousecure_slcr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_iouslcr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = psu_ipi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_lpd_slcr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_lpd_slcr_secure
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_lpd_xppu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_lpd_xppu_sink
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_mbistjtag
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_message_buffers
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ocm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ocm_ram_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_ocm_xmpu_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_pmu_global_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_r5_0_atcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_r5_0_btcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_r5_1_atcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_r5_1_btcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_r5_tcm_ram_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = scugic
 PARAMETER DRIVER_VER = 3.10
 PARAMETER HW_INSTANCE = psu_rcpu_gic
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_rpu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_rsa
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = rtcpsu
 PARAMETER DRIVER_VER = 1.6
 PARAMETER HW_INSTANCE = psu_rtc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sdps
 PARAMETER DRIVER_VER = 3.6
 PARAMETER HW_INSTANCE = psu_sd_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sdps
 PARAMETER DRIVER_VER = 3.6
 PARAMETER HW_INSTANCE = psu_sd_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_serdes
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_siou
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_smmu_gpv
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_smmu_reg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = spips
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = psu_spi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = spips
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = psu_spi_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = psu_ttc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = psu_ttc_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = psu_ttc_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = psu_ttc_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartps
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = psu_uart_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartps
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = psu_uart_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_usb_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = psu_usb_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = usbpsu
 PARAMETER DRIVER_VER = 1.4
 PARAMETER HW_INSTANCE = psu_usb_xhci_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = usbpsu
 PARAMETER DRIVER_VER = 1.4
 PARAMETER HW_INSTANCE = psu_usb_xhci_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = wdtps
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = psu_wdt_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = wdtps
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = psu_wdt_1
END



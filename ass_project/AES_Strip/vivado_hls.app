<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="AES_Strip" top="aes_main">
  <files>
    <file name="../aes_tb.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
    <file name="../aes_kernel.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
    <file name="AES_Strip/aes_kernel.h" sc="0" tb="false" cflags=""/>
    <file name="AES_Strip/aes_kernel.c" sc="0" tb="false" cflags=""/>
    <file name="AES_Strip/aes_dma.c" sc="0" tb="false" cflags=""/>
  </files>
  <solutions>
    <solution name="solution1" status="inactive"/>
    <solution name="solution2_no_getrange" status="inactive"/>
    <solution name="solution3_input_shifting" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>

<project xmlns="com.autoesl.autopilot.project" top="aes_main" name="Aes_barebones">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../aes_tb.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../aes_kernel.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="Aes_barebones/aes_kernel.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="Aes_barebones/aes_kernel.c" sc="0" tb="false" cflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>


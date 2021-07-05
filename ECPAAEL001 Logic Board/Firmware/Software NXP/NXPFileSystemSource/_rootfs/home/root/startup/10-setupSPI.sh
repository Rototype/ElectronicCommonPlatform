#!/bin/sh

# Settaggio registri IOMUX
# per ECSPI1
/unit_tests/memtool 0x303301F4=0x00000010
/unit_tests/memtool 0x303301F8=0x00000010
/unit_tests/memtool 0x303301FC=0x00000010
/unit_tests/memtool 0x30330200=0x00000010
# per ECSPI2
/unit_tests/memtool 0x30330204=0x00000010
/unit_tests/memtool 0x30330208=0x00000010
/unit_tests/memtool 0x3033020C=0x00000010
/unit_tests/memtool 0x30330210=0x00000010


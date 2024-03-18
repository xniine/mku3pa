
VIVADO    ?= $(shell cd /opt/Xilinx/Vivado/*/bin/.. && pwd)
FPGA_PART ?= xc7z030iffg676-2L
FPGA_TOP  ?= fpga

###############################################################################
MKFILE_TOP  = $(abspath $(lastword $(MAKEFILE_LIST)))
SOURCE_DIR ?= $(dir $(MKFILE_TOP))
TC_SRC_DIR ?= $(SOURCE_DIR)/test
BUILD_ROOT ?= $(PWD)

###############################################################################
# Third-Party RTL or Shadow-Copy
###############################################################################
IMPORTS_SOURCES += rtl/*.v

###############################################################################
# Local Source Codes
###############################################################################
COMPILE_SOURCES += $(patsubst %.v,%.v,$(IMPORTS_SOURCES))
#------------------------------------------------------------------------------
COMPILE_SOURCES += srcs/*.v

###############################################################################
# Update all source to abspath
###############################################################################
VERILOG_SOURCES  = $(patsubst %.v,$(SOURCE_DIR)%.v,$(COMPILE_SOURCES))

###############################################################################
# Include VIVADO related files
###############################################################################
COMPILE_ARGS += -y$(abspath $(BUILD_ROOT)/data/verilog/src)
COMPILE_ARGS += -y$(abspath $(BUILD_ROOT)/data/verilog/src/hybrid)
COMPILE_ARGS += -y$(abspath $(BUILD_ROOT)/data/verilog/src/retarget)
COMPILE_ARGS += -y$(abspath $(BUILD_ROOT)/data/verilog/src/unifast)
COMPILE_ARGS += -y$(abspath $(BUILD_ROOT)/data/verilog/src/unimacro)
COMPILE_ARGS += -y$(abspath $(BUILD_ROOT)/data/verilog/src/unisims)
COMPILE_ARGS += -y$(abspath $(BUILD_ROOT)/data/verilog/src/unisims_dr)
COMPILE_ARGS += -y$(abspath $(BUILD_ROOT)/data/verilog/src/xeclib)
COMPILE_ARGS +=   $(abspath $(BUILD_ROOT)/data/verilog/src)/glbl.v -s glbl

###############################################################################
PYTHON3_VER  = $(shell python3 -c 'import sys;print("python{0}.{1}".format(*sys.version_info))')
#------------------------------------------------------------------------------
TC_PREFIX   ?= test_
TC          ?= *
TC_SUFFIX    = .py

###############################################################################
ifeq ($(TEST_MODULE),)
.PHONY: sync sync-venv test clean

###############################################################################
test:
	@mkdir -p build
	@$(foreach tb, $(sort $(wildcard $(TC_SRC_DIR)/$(TC_PREFIX)$(TC)$(TC_SUFFIX))), \
		env -C $(TC_SRC_DIR) \
			PYTHONPATH=$(BUILD_ROOT):$(BUILD_ROOT)/scapy \
			PATH=$(BUILD_ROOT)/venv/bin:$(PATH) \
			COCOTB_RESOLVE_X=ZEROS \
		make -f $(MKFILE_TOP) \
			TEST_MODULE=$(notdir $(basename $(tb))) \
			SOURCE_DIR=$(SOURCE_DIR) \
			BUILD_ROOT=$(BUILD_ROOT) \
		; test -e $(TC_SRC_DIR)/waveform.vcd && cp $(TC_SRC_DIR)/waveform.vcd $(BUILD_ROOT)/build/$(notdir $(basename $(tb))).vcd \
		; echo '\n########################################################################################' \
		; sleep 2; \
	)

clean:
	@rm -Rf build

###############################################################################
sync: sync-data sync-venv
#------------------------------------------------------------------------------
sync-data:
	@test -e $(BUILD_ROOT)/data/verilog/src || mkdir -p $(BUILD_ROOT)/data/verilog && cp -r $(VIVADO)/data/verilog/src $(BUILD_ROOT)/data/verilog

sync-venv:
	@mkdir -p $(BUILD_ROOT)/.pip
	@mkdir -p venv && test -e $(BUILD_ROOT)/venv/bin/python3 || python3 -m venv $(BUILD_ROOT)/venv
	@test -e $(BUILD_ROOT)/venv/bin/cocotb-config || $(BUILD_ROOT)/venv/bin/pip3 install --find-links $(BUILD_ROOT)/.pip     pytest==6.2.5
	@test -e $(BUILD_ROOT)/venv/bin/cocotb-config || $(BUILD_ROOT)/venv/bin/pip3 install --find-links $(BUILD_ROOT)/.pip cocotb_bus==0.2.1
	@test -e $(BUILD_ROOT)/venv/bin/cocotb-config || $(BUILD_ROOT)/venv/bin/pip3 install --find-links $(BUILD_ROOT)/.pip     cocotb==1.6.1
	@test -e $(BUILD_ROOT)/scapy || (mkdir $(BUILD_ROOT)/scapy && wget https://github.com/secdev/scapy/tarball/master -O - | tar xz -C $(BUILD_ROOT)/scapy --strip-components=1)

sync-pip3:
	@pip3 download -d $(BUILD_ROOT)/.pip cocotb cocotb_bus pytest
wipe-venv:
	@rm -Rf $(BUILD_ROOT)/venv

###############################################################################
else
VERILOG_SOURCES += $(TC_SRC_DIR)/$(TEST_MODULE).v
SIM_BUILD     = $(BUILD_ROOT)/build/$(notdir $(basename $(TEST_MODULE)))
TOPLEVEL_LANG = verilog
TOPLEVEL      = test #$(shell sed -n 's/module  *\([^; ]*\).*/\1/p' $(TEST_SOURCE) | head -1)
MODULE        = test.$(TEST_MODULE)
SIM           = icarus 
# COMPILE_ARGS += -pfileline=1

export PYTHONWARNINGS=ignore::DeprecationWarning
export VIRTUAL_ENV=$(BUILD_ROOT)/venv
export COCOTB_RESULTS_FILE=$(BUILD_ROOT)/build/$(notdir $(basename $(TEST_MODULE))).xml
export COCOTB_HOOKS=$(subst /,.,$(basename $(TEST_MODULE)))

include $(shell $(BUILD_ROOT)/venv/bin/cocotb-config --makefiles)/Makefile.sim
endif


TARGET := test-configuration
SRC_ADB := component.adb
LIBS := base spark ada_interface
ADA_COMPONENTS_DIR = $(REP_DIR)/../../libs/ada-interface/test/rom
INC_DIR += $(ADA_COMPONENTS_DIR)
vpath component.adb $(ADA_COMPONENTS_DIR)
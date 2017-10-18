CUDA_PATH ?= /usr/local/cuda

HOST_COMPILER ?= g++
NVCC := $(CUDA_PATH)/bin/nvcc -ccbin $(HOST_COMPILER)

INCLUDES := $(CUDA_PATH)/include
LIBRARIES := $(CUDA_PATH)/lib64

SMS ?= 35

ifeq ($(GENCODE_FLAGS),)
# Generate SASS code for each SM architecture listed in $(SMS)
$(foreach sm,$(SMS),$(eval GENCODE_FLAGS += -gencode arch=compute_$(sm),code=sm_$(sm)))

# Generate PTX code from the highest SM architecture in $(SMS) to guarantee forward-compatibility
HIGHEST_SM := $(lastword $(sort $(SMS)))
ifneq ($(HIGHEST_SM),)
GENCODE_FLAGS += -gencode arch=compute_$(HIGHEST_SM),code=compute_$(HIGHEST_SM)
endif
endif

################################################################################

all: build

build:
	$(NVCC) -I$(INCLUDES) -L$(LIBRARIES) -lcudnn -lcuda -lcudart $(GENCODE_FLAGS) cudnnHandler.cu -o cudnnHandler 

run: build
	./cudnnHandler

clean:
	rm -rf cudnnHandler

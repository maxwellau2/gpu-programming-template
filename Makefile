view-out:
	cat cuda_output.log

.PHONY: build
build:
	module load craype-accel-nvidia80 && cmake --build build -j

run:
	qsub queue.sh

config-cmake:
	module load craype-accel-nvidia80 && cmake -S . -B build -DCMAKE_CXX_COMPILER=CC -DCMAKE_CUDA_COMPILER=nvcc

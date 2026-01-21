view-out:
	cat cuda_output.log

build:
	cmake --build build -j

run:
	qsub queue.sh

config-cmake:
	cmake -S . -B build -DCMAKE_CXX_COMPILER=CC -DCMAKE_CUDA_COMPILER=nvcc

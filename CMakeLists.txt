cmake_minimum_required(VERSION 3.18)
project(cuda_proj LANGUAGES CXX CUDA)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)

set(CMAKE_CUDA_ARCHITECTURES 80)

add_executable(main main.cu)

# Make clangd happy: explicitly add CUDA headers
target_include_directories(main SYSTEM PRIVATE
  $ENV{CUDA_HOME}/include
)

# Link cudart only if it's actually available on this node
find_package(CUDAToolkit QUIET)
if (CUDAToolkit_FOUND)
    target_link_libraries(main PRIVATE CUDA::cudart)
endif()

target_compile_options(main PRIVATE
  $<$<COMPILE_LANGUAGE:CUDA>:--expt-relaxed-constexpr>
)

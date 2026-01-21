#PBS -N cuda_hello
#PBS -l select=1:ncpus=1:ngpus=1
#PBS -l walltime=00:05:00
#PBS -o cuda_output.log
#PBS -e cuda_error.log

cd $PBS_O_WORKDIR
module load cuda
./build/main

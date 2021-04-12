#!/bin/bash
#SBATCH --job-name=export_fvae
#SBATCH --mail-user=hubert.bretonniere@obspm.fr
#SBATCH --mail-type=ALL
#SBATCH --nodes=1 --ntasks-per-node=16
#SBATCH --time=2
#SBATCH --partition=grace
#SBATCH --mem=15gb
#SBATCH --tmp=15gb
#SBATCH --gres=gpu:2
#SBATCH --nodelist=tycho57

# set -vx

source activate tfgpu

python bin/concatenate_models.py --decoder_module=/data/hbretonniere/Euclid/0_PA/vae_trained_model/1601888483/decoder --flow_module=/data/hbretonniere/Euclid/0_PA/flow_long_trained_model_nomag/1603963533/code_sampler --export_dir=/data/hbretonniere/Euclid/0_PA/fvae_trained_model_nomag_long_flow

exit 0
#!/bin/bash
#SBATCH --job-name=vae-training
#SBATCH --mail-user=hubert.bretonniere@obspm.fr
#SBATCH --mail-type=ALL
#SBATCH --nodes=1 --ntasks-per-node=16
#SBATCH --time=10
#SBATCH --partition=grace
#SBATCH --mem=15gb
#SBATCH --tmp=15gb
#SBATCH --gres=gpu:2
#SBATCH --nodelist=tycho57

# set -vx

source activate tfgpu

g2g-trainer --data_dir=/data/hbretonniere/HST/cosmos/for_g2g/attrs2img_cosmos64_euclid_pixscale_1_PA0 --output_dir=/data/hbretonniere/Euclid/0_PA/training_vae_nomag --problem=attrs2img_cosmos64_euclid --model=continuous_autoencoder_residual_vae --hparams_set=continuous_autoencoder_residual_128

exit 0
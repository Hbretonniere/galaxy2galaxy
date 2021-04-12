#!/bin/bash
#SBATCH --job-name=training_flow
#SBATCH --mail-user=hubert.bretonniere@obspm.fr
#SBATCH --mail-type=ALL
#SBATCH --nodes=1 --ntasks-per-node=16
#SBATCH --time=60
#SBATCH --partition=grace
#SBATCH --mem=15gb
#SBATCH --tmp=15gb
#SBATCH --gres=gpu:2
#SBATCH --nodelist=tycho57
#SBATCH --output=flow_trainer_log.txt

source activate tfgpu

g2g-trainer --data_dir=/data/hbretonniere/HST/cosmos/for_g2g/attrs2img_cosmos64_euclid_pixscale_1_PA0 --output_dir=/data/hbretonniere/Euclid/0_PA/training_flow_nomag --problem=attrs2img_cosmos64_euclid --model=latent_maf --hparams_set=latent_flow_larger --hparams="encoder_module=/data/hbretonniere/Euclid/0_PA/vae_trained_model/1601888483/encoder"

exit 0
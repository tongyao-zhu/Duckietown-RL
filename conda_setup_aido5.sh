#! /bin/bash
set -e

echo ""
echo "################################################"
echo "Creating new conda environment: dtaido5"
echo "################################################"

echo "################################################"
echo "Clone gym-duckietown"
echo "################################################"
rm -rf gym-duckietown
#git clone --branch daffy --single-branch https://github.com/duckietown/gym-duckietown.git ./gym-duckietown
git clone --branch v6.0.25 --single-branch --depth 1 https://github.com/duckietown/gym-duckietown.git ./gym-duckietown

echo ""
echo "################################################"
echo "Install gym-duckietown"
echo "################################################"
conda run -vn dtaido5 pip3 install -e gym-duckietown
#conda run -vn dtaido5 pip install duckietown-gym-daffy==5.0.16

echo "################################################"
echo "Copy custom maps to the installed pacages"
echo "################################################"
conda run -vn dtaido5_new python -m maps.copy_custom_maps_to_duckietown_libs

echo "################################################"
echo "
# To activate this environment, use
#
#     $ conda activate dtaido5
#
# To deactivate an active environment, use
#
#     $ conda deactivate
"
echo "################################################"
echo "Setup successful"
echo "################################################"


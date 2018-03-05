#!/bin/bash
input_dir=/home/zl7qk/LungSeg/data/Images_Isotropic_train

for image in ${input_dir}/*
do
    image_name=$(basename ${image} .nii.gz)

    antsRegistrationSyNQuick.sh \
    -d 3 \
    -f ./out_antsMTC2_template0.nii.gz \
    -m ${input_dir}/${image_name}.nii.gz \
    -o ${image_name}_ \
    -t b \
    -s 26
done

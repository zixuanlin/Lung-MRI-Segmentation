input_dir=/Users/zixuan/LungSeg/data/Ventilation2_acquisition/Images_Isotropic_train/samples_for_template_construction/
output_dir=/Users/zixuan/LungSeg/data/Ventilation2_acquisition/Images_Isotropic_train/samples_for_template_construction/

for image in ${input_dir}/*
do
    image_name=$(basename ${image} .nii.gz)

    ImageMath \
    3 \
    ${output_dir}/${image_name}_Padding.nii.gz \
    PadImage \
    ${image} \
    10
done

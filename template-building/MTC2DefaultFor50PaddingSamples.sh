inputPath=/Users/zixuan/LungSeg/data/Ventilation2_acquisition/Images_Isotropic_train/samples_for_template_construction/
outputPath=${PWD}/

${ANTSPATH}/antsMultivariateTemplateConstruction2.sh \
-d 3 \
-o ${outputPath}out_antsMTC2_ \
-c 2 \
-j 2 \
${inputPath}/*_Padding.nii.gz

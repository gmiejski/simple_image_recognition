#!/usr/bin/env bash
originalImagesPath=$PWD/Recognition
resizedImagesPath=$PWD/Recognition-resized
mkdir ${resizedImagesPath}

oilsClasses=`ls $originalImagesPath`
echo $oilsClasses

for oilClass in $oilsClasses
do
    mkdir ${resizedImagesPath}/${oilClass}
    imagesNames=`ls ${originalImagesPath}/${oilClass}`

    for oilImage in ${imagesNames}
    do
        echo ${originalImagesPath}/${oilClass}/${oilImage}
        convert ${originalImagesPath}/${oilClass}/${oilImage} -resize 256x256 ${resizedImagesPath}/${oilClass}/resized-${oilImage}
    done
done


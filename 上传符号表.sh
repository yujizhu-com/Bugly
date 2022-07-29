#!/bin/bash

function bugly_upload()
{
    local dir=$0
    echo $dir
    dir=${dir%/*}
    local appid=932fd8a744
    local appkey=f9e27509-ace3-45bf-a653-81d16d90479a
    local bundle=com.block.puzzle.jigsaw.picture.gallery
    local version=36.0
    local platform=Android
    local appdir=/Users/yujizhu/Documents/Git/zyt1010Jigsaw/proj.android-studio/app
    local mappingdir=/Users/yujizhu/Documents/Git/zyt1010Jigsaw/proj.android-studio/app/build/outputs/mapping/release

    java -jar $dir/buglyqq-upload-symbol.jar -appid $appid -appkey $appkey -bundleid $bundle -version $version -platform $platform -inputSymbol $appdir -inputMapping $mappingdir
}

bugly_upload
exit



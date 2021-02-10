#!/bin/sh
# 2021.02.10 
TARGET_JSON="EL_DeviceDescription_x_x_x.json"
LIST="list.txt"
echo $TARGET_JSON > $LIST

echo { > _tmp.json
#先頭の '{' と最後の '}' を削除
sed -e 's/^.//' -e '$s/.$//' "metaData.json" >> _tmp.json
echo , >> _tmp.json

sed -e 's/^.//' -e '$s/.$//' "definitions.json" >> _tmp.json
echo , >> _tmp.json

echo \"devices\":{  >> _tmp.json

FIRST=0
for var in ./devices_special/*.json
do
    echo $var >> $LIST
    if [ $FIRST = 0 ] ; then
        FIRST=1
    else
        echo , >> _tmp.json
    fi
    sed -e 's/^.//' -e '$s/.$//' $var >> _tmp.json
done

for var in ./devices/*.json
do
    echo $var >> $LIST
    echo , >> _tmp.json
    sed -e 's/^.//' -e '$s/.$//' $var >> _tmp.json
done

echo }} >> _tmp.json

# jqで整形
cat _tmp.json | jq > $TARGET_JSON

# _tmp.json を削除
rm _tmp.json

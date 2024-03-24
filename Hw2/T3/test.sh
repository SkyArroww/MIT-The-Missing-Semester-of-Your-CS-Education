 #!/usr/bin/env bash
count=0
echo > out.log
while true
do
    ./run.sh &>> out.log
    # echo "$?" &>> out.log
    if [[ $? -eq 1 ]];
    then
        echo "failed after $count times"
        break
    fi
    ((count=count+1))

done
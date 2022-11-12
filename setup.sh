
tasks=( $(/usr/bin/ls -A1 ./tasks/ | sort) )
for i in "${tasks[@]}"
do
  echo $i
done

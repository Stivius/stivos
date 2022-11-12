rm log.out
tasks=( $(/usr/bin/ls -A1 ./tasks/ | sort) )
for i in "${tasks[@]}"
do
  echo "Installing $i..."
  if [[ "$i" == *.sh ]]; then
    bash tasks/$i
  elif [[ "$i" == *.env ]]; then
    source tasks/$i
  fi
  if [[ "$?" -ne 0 ]]; then
    echo "$i terminated with error"
    exit
  fi
done

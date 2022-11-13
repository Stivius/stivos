export STIVOS=$(dirname $(realpath -s $0))

critical_tasks=("00-gpg.sh" "01-gpg-ssh.sh" "02-gpg-ssh.env" "03-core.sh" "05-i3.sh", "06-polybar.sh")
tasks=( $(/usr/bin/ls -A1 ./tasks/ | sort) )

for i in "${tasks[@]}"
do
  echo "Installing $i..."
  if [[ "$i" == *.sh ]]; then
    bash tasks/$i
    if [[ "$i" == *core.sh ]]; then
      source ~/.profile
    fi
  elif [[ "$i" == *.env ]]; then
    source tasks/$i
  fi
  if [[ "$?" -ne 0 ]]; then
    echo "$i exited with error"
    if [[ " ${critical_tasks[*]} " =~ " ${i} " ]]; then
      exit
    fi
  fi
done

function checkretval() {
  # This function checks the return value of the last shell command.
  # It adjusts the color green==good==0 or red otherwise.
  if [ ${1} -eq 0 ]
  then
    echo -en "\033[0;32m${1}\033[m"
  else
    echo -en "\033[1;31m${1}\033[m"
  fi
}
# Make the prompt pretty:
PS1='\e[m[\t]\]\e[34m\h\]\e[m:\W\]\e[m[$(checkretval $?)]\]\n$ '

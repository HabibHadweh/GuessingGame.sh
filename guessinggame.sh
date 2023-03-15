function ask_guess {
  echo "How many files are in the current directory?"
  read guess
}

files_count=$(ls -1 | wc -l)
ask_guess

while [[ $guess -ne $files_count ]]
do
  if [[ $guess -lt $files_count ]]
  then
    echo "Your guess was too low. Please try again."
  else
    echo "Your guess was too high. Please try again."
  fi
  ask_guess
done

echo "Congratulations! Your guess of $guess was correct."

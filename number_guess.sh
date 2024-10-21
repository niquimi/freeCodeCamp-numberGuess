#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

# Check if player exists
USER_DATA=$($PSQL "SELECT games_played, best_game FROM users WHERE username='$USERNAME'")
IFS='|' read GAMES_PLAYED BEST_GAME <<< "$USER_DATA"

if [[ -z $USER_DATA ]]; then
  # Insert new player into the database
  INSERT_PLAYER_RESPONSE=$($PSQL "INSERT INTO users(username, games_played) VALUES ('$USERNAME', 1)")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  GAMES_PLAYED=0
  BEST_GAME="Infinity"  # or set to a high value if preferred
else
  # Convert null best_game to a more manageable number
  if [[ -z $BEST_GAME ]]; then
    BEST_GAME="Infinity"  # or set to a high value if preferred
  fi
  
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate the secret number
SECRET_NUMBER=$(( (RANDOM % 1000) + 1 ))
GUESS=0
NUMBER_OF_GUESSES=0

# Print the secret number guess prompt
echo "Guess the secret number between 1 and 1000:"

# Game loop
while [[ $GUESS != $SECRET_NUMBER ]]; do
  read GUESS
  # Check if guess is an integer
  if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue  # Skip to the next iteration of the loop
  fi
  
  # Increment the number of guesses
  NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))

  # Check if guess is lower or higher
  if [[ $GUESS -lt $SECRET_NUMBER ]]; then
    echo "It's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  fi
done

# Final output when guessed correctly
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"

# Update game stats
GAMES_PLAYED=$((GAMES_PLAYED + 1))

# Check and update best game
if [[ $BEST_GAME == "Infinity" || $NUMBER_OF_GUESSES -lt $BEST_GAME ]]; then
  BEST_GAME=$NUMBER_OF_GUESSES
fi

# Update player data in the database
UPDATE_DATA_RESPONSE=$($PSQL "UPDATE users SET games_played = $GAMES_PLAYED, best_game = $BEST_GAME WHERE username='$USERNAME'")


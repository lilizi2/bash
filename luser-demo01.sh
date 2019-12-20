#!/bin/bash

# Display 'Hello'
echo 'Hello'

#Assign a value to a variable
WORD='script'

echo "$WORD"

# Single quote NOT get expanded
echo '$WORD'

# combine text
echo "this is a shell $WORD"

#Display the contents of the variable using an alternative syntax
echo "This is a shell ${WORD}"

#Append text to the variable
echo "${WORD}ing is fun!"

#Create a new variable
ENDING='ed'

#Combine the two variables
echo "This is ${WORD}${ENDING}."

#Reassign
ENDING='ing'
echo "${WORD}${ENDING} is fun."

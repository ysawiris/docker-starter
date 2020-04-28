# ------------------------------- DO NOT MODIFY ------------------------------ #
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

#  Install curl
RUN apk add curl

# Install homebrew using curl command:
RUN curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh

# Access homebrew dependencies to use brew command
FROM homebrew/brew

# Install tldr
RUN brew install tldr

# Run the tldr command that was assigned to me
RUN tldr sed

#how to add everything in container
ADD . /app

# Create app directory
WORKDIR /app

# Print out a description of the sed command 
RUN echo "sed allows you to edit text in a scriptable manner."

# Run the sed command:
#Apply multiple find-replace expressions to a file:
#
CMD sed -e 's/(/ /' -e 's/)/ /' /app/numbers.txt


#Sample 2
#Replace the first occurrence of a string in a file, and print the result:
#CMD sed 's/find/replace/' /app/numbers.txt

#Sanple 3 
#Replace separator / by any other character not used in the find or replace patterns, e.g., #:
#CMD sed 's#find#replace#' /app/numbers.txt
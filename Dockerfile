# ------------------------------- DO NOT MODIFY ------------------------------ #
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

#  Install sed 
RUN apk add sed 

#how to add everything in container
ADD . /app

# Print out a description of the sed command 
RUN echo "sed allows you to edit text in a scriptable manner."

# Run the sed command:
CMD "sed -e 's/(/ /' -e 's/)/ /' /app/numbers.txt" 


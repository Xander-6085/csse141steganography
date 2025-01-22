#!/bin/bash
IP = 137.112.200.226
PORT = 80

# Load local AI model through the bridgeTroll modelfile
# Expect to wait a while, the model is 4.1GBs
ollama create bridgeTroll -f bridgeTroll
# Start local AI server, communication will be through REST API
ollama serve &

# Start PHP server, should use a non-development server but this will work for the CTF competition
php -S $IP:$PORT

# Wait for either process to crash
wait -n

# Exit with status of crashed process 
exit $?

#!/bin/bash

OPENAI_API_KEY=$1
JAVA_CODE=$2

curl -X POST https://api.openai.com/v1/chat/completions \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -d '{
        "model": "gpt-3.5-turbo",
        "messages": [
            {"role": "system", "content": "You are a helpful code documentation generator."},
            {"role": "user", "content": "Generate documentation for the following Java code, including class-level, function-level, and method-level docstrings:\n\n'"$JAVA_CODE"'"}
        ],
        "max_tokens": 1500,
        "temperature": 0.3
    }'

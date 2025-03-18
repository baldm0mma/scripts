#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Please provide a question as an argument."
    exit 1
fi

# Store the question
question="$1"

# Local repository path
repo_path="$HOME/Documents/projects/personal/programmingNotes"

# Specific file to append the question to
questions_file="general.md"

# Change to the repository directory
cd "$repo_path" || exit

# Pull the latest changes
git pull

# Ensure the questions file exists
touch "$questions_file"

# Append the new question with a line break
echo -e "$question" >> "$questions_file"

# Add the changes
git add "$questions_file"

# Commit with the provided question
git commit -m "Add the following question: $question"

# Push changes
git push

echo "Question added, committed, and pushed successfully."

#!/usr/bin/env bash


NUM_SCORES=5
scores=()
i=0
while [ "$i" -lt "$NUM_SCORES" ]; do
  if [ -t 0 ]; then
    printf "Enter score %d: " "$((i + 1))" >&2
  fi

  if ! read -r token; then
    echo "Error: expected $NUM_SCORES scores, got $i." >&2
    exit 1
  fi

  token="${token## }"
  token="${token%% }"

  if ! printf '%s\n' "$token" | grep -Eq '^[0-9]+$'; then
    echo "Invalid input: '$token' — please enter a non-negative integer." >&2
    exit 1
  fi

  scores+=("$token")
  i=$((i + 1))
done

max="${scores[0]}"
for val in "${scores[@]:1}"; do
  if [ "$val" -gt "$max" ]; then
    max="$val"
  fi
done

printf "Highest score: %s\n" "$max"

for idx in "${!scores[@]}"; do
  score="${scores[$idx]}"
  diff=$((max - score))
  printf "Student %d score: %s, difference from highest: %s\n" "$((idx + 1))" "$score" "$diff"
done


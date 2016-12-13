#!/bin/bash

DAY_OF_WEEK=`date +%u`

if [[ $DAY_OF_WEEK == "5" ]]; then
  CONFIRMATION=$(buildkite-agent meta-data get confirmation || echo "")

  # The question hasn't been answered yet
  if [[ $CONFIRMATION == "" ]]; then
    buildkite-agent pipeline upload <<EOF
steps:
  - block: "Deploy :rocket:"
    prompt: "Hey, it's Friday... No one likes deploying on a Friday. But if you really need to, that's OK, but you gotta take responsibility"
    fields:
      - select: "Are you sure you want to deploy?"
        key: "confirmation"
        options:
          - label: "Yes, I'm sure. If something goes wrong, I'll fix it"
            value: yes
          - label: "Err, nah. I've changed my mind"
            value: no
  - command: "$BUILDKITE_COMMAND"
EOF
    exit 0
  elif [[ "$CONFIRMATION" == "no" ]]; then
    echo "OK, No deploy today..."
    exit 1
  fi
fi

echo "Deploying!!"

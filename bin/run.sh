#! /bin/bash
#
# Script for loading the loving-ai agent into Ghost
#
# Please run after ghost_bridge has started
#

# Gets the hanson robotics workspace path
HR_WORKSPACE="$(hr env | grep HR_WORKSPACE | cut -d = -f 2)"

# telnet the commands for loading the loving-ai ghost agent
printf "Loading loving-ai-ghost...\n\n"
telnet localhost 17001 <<EOF
(ghost-parse-file "$HR_WORKSPACE/OpenCog/loving-ai-ghost/concepts-eddie.ghost")
(ghost-parse-file "$HR_WORKSPACE/OpenCog/loving-ai-ghost/introduction-eddie.ghost")
(ghost-parse-file "$HR_WORKSPACE/OpenCog/loving-ai-ghost/awareness_practice_1.ghost")
(ghost-parse-file "$HR_WORKSPACE/OpenCog/loving-ai-ghost/awareness_practice_2.ghost")
(ghost-parse-file "$HR_WORKSPACE/OpenCog/loving-ai-ghost/listening.ghost")
(ghost-parse-file "$HR_WORKSPACE/OpenCog/loving-ai-ghost/closing.ghost")
EOF
printf "\nLoaded\n"
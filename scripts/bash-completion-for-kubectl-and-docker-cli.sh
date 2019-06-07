#!/bin/bash
#
# run this to use bash completion for docker cli commands and kubectl
source <(kubectl completion bash )
source <(docker completion bash )
echo "---------- done ----------"

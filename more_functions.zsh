aaa() {
    if [[ $# -eq 1 ]]; then
        # List the S3 path
        als "$1"
    elif [[ $# -eq 2 ]]; then
        # Copy the specified file from S3 to the current directory
        acp "${1%/}/$2" "$2"
    else
        echo "Usage:"
        echo "  aaa <s3-path>"
        echo "  aaa <s3-path> <filename>"
        return 1
    fi
}

qq() {
  copilot -sp "$*" \
    --model "auto" \
    --deny-tool='shell,write,read,url,memory' \
    --no-ask-user
}

cmd() {
  copilot -sp \
    "Return exactly one zsh command for macOS. No Markdown or explanation. Do not execute it. Task: $*" \
    --model "auto" \
    --deny-tool='shell,write,read,url,memory' \
    --no-ask-user
}

qc() {
  codex e --skip-git-repo-check --ephemeral -s read-only \
    --model gpt-5.6-luna --config 'model_reasoning_effort="low"' \
    "$*" 2>/dev/null
}

codex() {
    command /opt/homebrew/bin/codex \
      --model gpt-5.6-sol \
      --config 'model_reasoning_effort="medium"' \
      "$@"
}


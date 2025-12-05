#!/bin/zsh

# Wrapper functions for GitHub Copilot CLI commands: ghcs (suggest) and ghce (explain)

function ghcs(){
        # Get the name of the function being called
        FUNCNAME="$funcstack[1]"
        # Default target for suggestions
        TARGET="shell"
        # Localize variables to prevent them from affecting the parent shell
        local GH_DEBUG="$GH_DEBUG"
        local GH_HOST="$GH_HOST"
        local __USAGE

        # Heredoc for usage instructions, loaded into a variable
        __USAGE=$(cat <<-EOF
        Wrapper around \`gh copilot suggest\` to suggest a command based on a natural language description of the desired output effort.
        Supports executing suggested commands if applicable.

        USAGE
          $FUNCNAME [flags] <prompt>

        FLAGS
          -d, --debug           Enable debugging
          -h, --help            Display help usage
              --hostname        The GitHub host to use for authentication
          -t, --target target   Target for suggestion; must be shell, gh, git
                                default: "$TARGET"

        EXAMPLES

        - Guided experience
          $ $FUNCNAME

        - Git use cases
          $ $FUNCNAME -t git "Undo the most recent local commits"
          $ $FUNCNAME -t git "Clean up local branches"
          $ $FUNCNAME -t git "Setup LFS for images"

        - Working with the GitHub CLI in the terminal
          $ $FUNCNAME -t gh "Create pull request"
          $ $FUNCNAME -t gh "List pull requests waiting for my review"
          $ $FUNCNAME -t gh "Summarize work I have done in issues and pull requests for promotion"

        - General use cases
          $ $FUNCNAME "Kill processes holding onto deleted files"
          $ $FUNCNAME "Test whether there are SSL/TLS issues with github.com"
          $ $FUNCNAME "Convert SVG to PNG and resize"
          $ $FUNCNAME "Convert MOV to animated PNG"
EOF
)

        # Parse command-line options
        local OPT OPTARG OPTIND
        while getopts "dht:-:" OPT; do
                # Handle long options (e.g., --debug)
                if [ "$OPT" = "-" ]; then
                        OPT="${OPTARG%%=*}"       # Extract long option name
                        OPTARG="${OPTARG#"$OPT"}" # Extract argument
                        OPTARG="${OPTARG#=}"      # Remove leading '=' if present
                fi

                case "$OPT" in
                        debug | d)
                                GH_DEBUG=api
                                ;;

                        help | h)
                                echo "$__USAGE"
                                return 0
                                ;;

                        hostname)
                                GH_HOST="$OPTARG"
                                ;;

                        target | t)
                                TARGET="$OPTARG"
                                ;;
                esac
        done

        # Remove parsed options from the argument list
        shift "$((OPTIND-1))"

        # Create a temporary file to store the suggested command
        TMPFILE="$(mktemp -t gh-copilotXXXXXX)"
        # Ensure the temporary file is removed on exit
        trap 'rm -f "$TMPFILE"' EXIT

        # Run gh copilot suggest and store the output in the temp file
        if GH_DEBUG="$GH_DEBUG" GH_HOST="$GH_HOST" gh copilot suggest -t "$TARGET" "$@" --shell-out "$TMPFILE"; then
                # If the suggestion was successful and the temp file is not empty
                if [ -s "$TMPFILE" ]; then
                        # Read the command from the file
                        FIXED_CMD="$(cat $TMPFILE)"
                        # Add the command to the shell history
                        print -s -- "$FIXED_CMD"
                        echo
                        # Execute the command
                        eval -- "$FIXED_CMD"
                fi
        else
                # Return an error code if gh copilot suggest fails
                return 1
        fi
}

function ghce() {
        # Get the name of the function being called
        FUNCNAME="$funcstack[1]"
        # Localize variables
        local GH_DEBUG="$GH_DEBUG"
        local GH_HOST="$GH_HOST"
        local __USAGE

        # Heredoc for usage instructions, loaded into a variable
        __USAGE=$(cat <<-EOF
        Wrapper around \`gh copilot explain\` to explain a given input command in natural language.

        USAGE
          $FUNCNAME [flags] <command>

        FLAGS
          -d, --debug      Enable debugging
          -h, --help       Display help usage
              --hostname   The GitHub host to use for authentication

        EXAMPLES

        # View disk usage, sorted by size
        $ $FUNCNAME 'du -sh | sort -h'

        # View git repository history as text graphical representation
        $ $FUNCNAME 'git log --oneline --graph --decorate --all'

        # Remove binary objects larger than 50 megabytes from git history
        $ $FUNCNAME 'bfg --strip-blobs-bigger-than 50M'
EOF
)

        # Parse command-line options
        local OPT OPTARG OPTIND
        while getopts "dh-:" OPT; do
                 # Handle long options
                if [ "$OPT" = "-" ]; then
                        OPT="${OPTARG%%=*}"
                        OPTARG="${OPTARG#"$OPT"}"
                        OPTARG="${OPTARG#=}"
                fi

                case "$OPT" in
                        debug | d)
                                GH_DEBUG=api
                                ;;

                        help | h)
                                echo "$__USAGE"
                                return 0
                                ;;

                        hostname)
                                GH_HOST="$OPTARG"
                                ;;
                esac
        done

        # Remove parsed options from the argument list
        shift "$((OPTIND-1))"

        # Run gh copilot explain with the remaining arguments
        GH_DEBUG="$GH_DEBUG" GH_HOST="$GH_HOST" gh copilot explain "$@"
}

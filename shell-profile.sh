# Dot-source this file in your shell profile
__dirname="$(CDPATH= cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__dirname="$(CDPATH= cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$__dirname"

if [[ "$GIT_ASKPASS" =~ "/.vscode-server/" ]] && [[ "$GIT_ASKPASS" =~ "/askpass.sh$" ]] ; then
    export VSCODE_GIT_ASKPASS="$GIT_ASKPASS"

    # Detect if running in zsh or bash
    if [ -n "$ZSH_VERSION" ]; then
        export GIT_ASKPASS="$(CDPATH= cd "$(dirname "${(%):-%N}")" && pwd)/vscode-askpass-fix"
    elif [ -n "$BASH_VERSION" ]; then
        export GIT_ASKPASS="$(CDPATH= cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/vscode-askpass-fix"
    else
        echo "Unsupported shell"
    fi
fi

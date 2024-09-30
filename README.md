Workaround for https://github.com/microsoft/vscode/issues/230033

Clone this repo somewhere.

For bash or zsh, dot-source `shell-profile.sh` in your shell profile:

```shell
source /path/to/vscode-askpass-fix/shell-profile.sh
```

For other shells, it's simple enough, write a snippet in your
shell profile to set `GIT_ASKPASS` and `VSCODE_GIT_ASKPASS` the same way as `shell-profile.sh`.

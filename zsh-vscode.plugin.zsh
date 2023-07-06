if [[ ":${PATH}:" != *":${HOME}/.local/bin:"* ]]; then
    export PATH=${HOME}/.local/bin:${PATH}
fi

local _vscode_paths > /dev/null 2>&1

if [[ $('uname') == 'Linux' ]]; then
    _vscode_paths=(
        "/usr/local/bin/code"
        "$HOME/bin/code"
        "/opt/vscode/code"
    )
elif  [[ "$OSTYPE" = darwin* ]]; then
    local _vscode_paths > /dev/null 2>&1
    _vscode_paths=(
        "/usr/local/bin/code"
        "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
        "$HOME/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
    )
elif [[ "$OSTYPE" = 'cygwin' ]]; then
    _vscode_paths=(
        "$(cygpath $ProgramW6432/Visual\ Studio\ Code)/code.exe"
    )
fi

for _vscode_path in $_vscode_paths; do
        if [[ -a $_vscode_path ]]; then
            if [[ ! -a "$HOME/.local" ]]; then
                mkdir "$HOME/.local"
            fi
            if [[ ! -a "$HOME/.local/bin" ]]; then
                mkdir "$HOME/.local/bin"
            fi
            if [[ ! -a "$HOME/.local/bin/code" ]]; then
                ln -s $_vscode_path "$HOME/.local/bin"
            fi
            break
        fi
    done

# zsh-vscode
[![file-search](.zsh-vscode.gif)](https://asciinema.org/a/Qkpnx9fyBLNYtyx9dPIvrxeKz)

zsh-vscode is a plugin for Oh My Zsh that enhances the integration between Zsh and Visual Studio Code. It allows you to interact with Visual Studio Code directly from the command line, providing convenient shortcuts and autocompletion. 

### Autocompletion
Our plugin leverages the powerful autocompletion capabilities of Zsh. When using the code command, you can enjoy autocompletion for file paths, directories, and available Visual Studio Code commands.

### WSL Support
zsh-vscode includes support for Windows Subsystem for Linux (WSL). You can seamlessly use the code command within WSL, and Visual Studio Code located on your Windows system will be launched correctly. 

### Features

 * If `code` command is called without an argument, launch Visual Studio Code.

 * If `code` is passed a directory, `cd` to it and open it in Visual Studio Code.

 * If `code` is passed a file, open it in Visual Studio Code.

 * If type in `code -` and press tab key, autocomplete and show help of vscode. 

 * If `sudo code` command is called, via root to open the file or folder in the last active Visual Studio Code window. Useful for editing system protected files.

### Requirements

 * [Visual Studio Code](https://code.visualstudio.com/)


### Installation

#### Manual

1. Clone this repository somewhere on your machine, such as `~/.zsh/vscode`.

  ```sh
  git clone https://github.com/PoonKinWang/zsh-vscode.git ~/.zsh/zsh-vscode
  ```

2. Add the following to your `.zshrc`:

  ```sh
  source ~/.zsh/zsh-vscode/zsh-vscode.plugin.zsh
  ```

3. Start a new terminal session for the changes to take effect.

#### Oh My Zsh

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

  ```sh
  git clone https://github.com/PoonKinWang/zsh-vscode.git $ZSH_CUSTOM/plugins/zsh-vscode
  ```

2. Add `zsh-vscode` to the list of plugins in your .zshrc file:

  ```sh
  plugins=(zsh-vscode)
  ```

3. Start a new terminal session for the changes to take effect.

Feel free to reach out if you have any further questions or need additional assistance.
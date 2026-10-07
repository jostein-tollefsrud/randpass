# randpass

Generates a random password in the terminal, prints it, and copies it to the clipboard.

Requires macOS (`pbcopy`) and zsh.

## Installation

```sh
git clone https://github.com/jostein-tollefsrud/randpass.git ~/Developer/randpass
~/Developer/randpass/install.sh
```

`install.sh` creates a symlink in `~/.local/bin`, so changes to the repo take effect immediately.

## Usage

```
randpass             32 characters, letters and digits
randpass 64          64 characters, letters and digits
randpass -s          32 characters with special characters
randpass -s 20       20 characters with special characters
randpass -h          show help
```

Special characters: `!@#$%^&*()_+=,.:;?~-`. With `-s`, the password always contains at least one special character.

Characters are drawn from `/dev/urandom`.

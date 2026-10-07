#!/bin/zsh
# Symlinks ~/.local/bin/randpass to the script in this repo.

repo_dir="${0:A:h}"
bin_dir="$HOME/.local/bin"

mkdir -p "$bin_dir"
chmod +x "$repo_dir/randpass"
ln -sf "$repo_dir/randpass" "$bin_dir/randpass"
echo "Installed: $bin_dir/randpass -> $repo_dir/randpass"

if [[ ":$PATH:" != *":$bin_dir:"* ]]; then
  echo
  echo "$bin_dir is not in PATH. Add this line to ~/.zshrc:"
  echo '  export PATH="$HOME/.local/bin:$PATH"'
fi

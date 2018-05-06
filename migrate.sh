brew install ghq
ghq get https://github.com/macinjoke/my-brew.git
# if you use from working pc, use following.
# ln -s ~/.ghq/github.com/macinjoke/my-brew/Brewfile4work ~/.Brewfile
ln -s ~/.ghq/github.com/macinjoke/my-brew/Brewfile ~/.Brewfile
brew bundle

# my-brew
My Homebrew management using [homebrew-bundle](https://github.com/Homebrew/homebrew-bundle) and [mas](https://github.com/mas-cli/mas)

# ファイルの意味
- `Brewfile` : 個人PC で使うようのBrewfile
- `Brewfile4work` : 仕事用PCで使うようのBrewfile。明らかに仕事で使わないようなアプリを除外している。

# 管理方法
`brew bundle dump --force --global` をするとカレントディレクトリに関係なく `~/.Brewfile` にダンプされる。(--force は上書き可能option)
`~/.Brewfile` はこのリポジトリの `Brewfile` または `Brewfile4work` へのシンボリックリンクを貼っておく。

# 難点
個人用と仕事用で設定ファイルを分けると、同期させるのめんどい。例えば個人用で新たに `brew install colordiff` , `brew bundle dump --force --global` すると `Brewfile` が書き換わるが、仕事用のPCでも `colordiff` を使いたいと思った時は手動でBrewfile に `brew "colordiff"` という一行を追加しなくてはならない。(または仕事用PCで同様のインストールとダンプを行う)

何か良い感じに管理できる方法があったら教えてほしい。


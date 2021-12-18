# latex-template

ぼくのかんがえたさいきょうの LaTeX 環境

LaTeX でレポートなどを書くことを想定したテンプレートです。

## 使用方法

### 準備

1. [このテンプレートからリポジトリを作成する](https://docs.github.com/ja/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
2. 作成したリポジトリを clone する
3. VS Code で開き、**Remote-Containers: Open Folder in Container...** をコマンドパレットから実行する

### コンパイル

LaTeX ファイルを開き、コマンドパレットから、**LaTeX Workshop: Build with recipe** を実行し、**latexmk** を選択してください。

次回からは、ファイルを保存すると自動でビルドされます。

## 構成

このリポジトリには、以下の環境や設定が含まれ、 [Visual Studio Code Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) で使用できます。

構成や環境はテンプレートから必要に応じて変更してください。

### Docker コンテナ

- Debian
  - [`node:lts`](https://hub.docker.com/_/node/) Docker イメージに含まれるもの
- TeXLive
  - [`paperist/texlive-ja:latest`](https://hub.docker.com/r/paperist/texlive-ja/) Docker イメージよりコピー
- Python
  - [`python3-pygments`](https://packages.debian.org/buster/python3-pygments) Debian パッケージに含まれるもの
  - シンタックスハイライタ [minted](https://ctan.org/pkg/minted) に必要
- Node.js、npm、yarn
  - [`node:lts`](https://hub.docker.com/_/node/) Docker イメージに含まれるもの
  - TextLint に必要

詳細は [`.devcontainer/Dockerfile`](.devcontainer/Dockerfile) をご覧ください。

### npm パッケージ

- TextLint と各種ルール

詳細は [`package.json`](package.json) をご覧ください。

### 各種設定

- VS Code の LaTeX 向け設定 ([`.vscode/settings.json`](.vscode/settings.json))
- TextLint の設定 ([.textlintrc](.textlintrc))

### サンプルレポート

レポートのサンプルが `report1` 下にあります。

## 参考

このリポジトリは、以下のリポジトリや記事を参考にしました。このリポジトリを使用する際，参考にしてください。

- [Paperist/texlive-ja](https://github.com/Paperist/texlive-ja)
- [nukopy/ubuntu-texlive-ja](https://github.com/nukopy/ubuntu-texlive-ja)
- [Developing inside a Container using Visual Studio Code Remote Development](https://code.visualstudio.com/docs/remote/containers)

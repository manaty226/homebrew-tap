# Homebrew Tap

manaty226が配布するアプリやツールをHomebrewからインストールするための公開Tapです。

## Tapを追加

[Homebrew](https://brew.sh/)をインストールしたMacで、次を実行してください。

```sh
brew tap manaty226/tap
```

## 配布中のアプリ

| Cask | 内容 | インストール |
| --- | --- | --- |
| [Fude](#fude) | RustとGPUIで作られたmacOS向けコードエディタ | `brew install --cask manaty226/tap/fude` |

## Fude

### インストール

Tapを追加済みの場合は、次を実行してください。

```sh
brew install --cask manaty226/tap/fude
```

アプリケーションフォルダに `Fude.app` がインストールされます。Finderから開くか、次を実行します。

```sh
open -a Fude
```

Apple Silicon向けの最新版には `fude` CLIも付属します。`fude --help` からタスク・スケジュール・サンドボックスの操作を確認できます。
GUIで作業フォルダを開く場合は `fude --path /path/to/project` を実行します。

手動でインストールしたFudeが既にある場合は、そのアプリを終了して別の場所へ移動してから、Homebrewでインストールしてください。

### 更新

```sh
brew update
brew upgrade --cask manaty226/tap/fude
```

### アンインストール

```sh
brew uninstall --cask manaty226/tap/fude
```

アプリの設定やワークスペース情報は削除しません。

### 直接ダウンロード

[Releases](https://github.com/manaty226/homebrew-tap/releases)から `Fude-<version>-<build>-macos-arm64.zip` をダウンロードし、展開した `Fude.app` をアプリケーションフォルダへ移動してください。

配布アプリはDeveloper ID署名・Appleの公証済みです。各ReleaseにSHA-256チェックサムを添付しています。ZIPと `.sha256` ファイルを同じフォルダに保存すると、次の形式で確認できます。

```sh
shasum -a 256 -c Fude-0.1.11-13-macos-arm64.zip.sha256
```

### 対応環境

- macOS向け。ビルド上の最低バージョンはmacOS 13 Venturaです。
- 最新版はApple Silicon向けです。Intel Macでは公証済みの0.1.2（Universal Binary）を引き続き配布します。
- 言語サーバー、各言語のSDK、外部AI CLIは別途用意してください。

## このリポジトリについて

配布用ZIPはGitHub Releases、Homebrew Cask定義は `Casks/` に置いています。Fudeの定義は [`Casks/fude.rb`](Casks/fude.rb) です。
アプリのソースコードはこのリポジトリに含みません。

### 以前のTapから移行する場合

`manaty226/fude-release` からFudeをインストール済みの場合は、次を実行してください。

```sh
brew tap manaty226/tap
brew reinstall --cask manaty226/tap/fude
brew untap manaty226/fude-release
```

まだインストールしていない場合は、通常のインストール手順を使ってください。

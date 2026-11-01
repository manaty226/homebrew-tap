# Fude

RustとGPUIで作られたmacOS向けコードエディタ、Fudeの配布リポジトリです。

## Homebrewからインストール

[Homebrew](https://brew.sh/)をインストールしたMacで、次を実行してください。

```sh
brew tap manaty226/fude-release https://github.com/manaty226/fude-release.git
brew install --cask manaty226/fude-release/fude
```

アプリケーションフォルダに `Fude.app` がインストールされます。Finderから開くか、次を実行します。

```sh
open -a Fude
```

手動でインストールしたFudeが既にある場合は、そのアプリを終了して別の場所へ移動してから、Homebrewでインストールしてください。

## 更新

```sh
brew update
brew upgrade --cask manaty226/fude-release/fude
```

## アンインストール

```sh
brew uninstall --cask manaty226/fude-release/fude
```

アプリの設定やワークスペース情報は削除しません。

## 直接ダウンロード

[Releases](https://github.com/manaty226/fude-release/releases)から `Fude-<version>-<build>-macos-universal.zip` をダウンロードし、展開した `Fude.app` をアプリケーションフォルダへ移動してください。

配布アプリはDeveloper ID署名・Appleの公証済みです。各ReleaseにSHA-256チェックサムを添付しています。ZIPと `.sha256` ファイルを同じフォルダに保存すると、次の形式で確認できます。

```sh
shasum -a 256 -c Fude-0.1.0-2-macos-universal.zip.sha256
```

## 対応環境

- macOS向け。ビルド上の最低バージョンはmacOS 13 Venturaです。
- Apple SiliconとIntelを含むUniversal Binaryです。
- 言語サーバー、各言語のSDK、外部AI CLIは別途用意してください。

## このリポジトリについて

配布用ZIPはGitHub Releases、Homebrew Cask定義は [`Casks/fude.rb`](Casks/fude.rb) に置いています。
アプリのソースコードはこのリポジトリに含みません。

リポジトリ名が `homebrew-` で始まらないため、初回の `brew tap` では上記のURLも指定してください。

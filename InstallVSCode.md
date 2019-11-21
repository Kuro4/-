RaspberryPiにVSCodeをインストールする

# 0.インストールスクリプトを使う
インストール用スクリプトを作ったのでそれを使う

```bash
$ curl https://github.com/Kuro4/RaspiMemo/blob/master/installvscode.sh | sudo bash
```

以降はスクリプトを使わずにインストールする方法

# 1.GPG Keyのインストール

まずはGPG Keyを取得する

```bash
$ wget https://packagecloud.io/headmelted/codebuilds/gpgkey
```

または[ここ](https://code.headmelted.com/)からダウンロード

次にインストール

```bash
$ sudo apt-key add gpg
```

gpgの部分には取得したGPG Keyのパスを入れる

# 2.VSCodeのインストール

```bash
$ sudo su
```

でrootにしておいて

```bash
$ . <( wget -O - https://code.headmelted.com/installers/apt.sh )
```

でOK
実行する場合は

```bash
$ code-oss
```

# 3.実行しても画面が真っ暗のままの場合

最新バージョンでのバグっぽい
ダウングレードすると解決する

```bash
$ apt-get install code-oss=1.29.0-1539702286
```

そして自動更新を止めとく

```bash
$ apt-mark hold code-oss
```

自動更新を再開するには

```bash
$ apt-mark unhold code-oss
```

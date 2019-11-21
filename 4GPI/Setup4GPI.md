# 4GPI セットアップ

セットアップ済みの OS を配布してくれているので[ココ](https://mechatrax.com/data/4gpi/)から OS イメージを入手してSDカードに書き込む
セットアップ済みイメージはlite版(CUI)しかないので注意
また、ログイン情報は[ココ](https://github.com/mechatrax/4gpi/tree/master/os)から入手する

セットアップ済みイメージを使わずにセットアップする場合は

```bash
curl https://mechatrax.github.io/setup.sh | sudo bash
```

でリポジトリを追加して

```bash
sudo apt install 4gpi-utils 4gpi-net-mods 4gpi-networkmanager
```

でパッケージのインストールを行う

## 各パッケージについて

* [4gpi-utils](https://github.com/mechatrax/4gpi-utils/)
4GPi を操作するためのツール類を提供

* [ 4gpi-net-mods](https://github.com/mechatrax/4gpi-net-mods/)
4GPi を標準設定の Raspbian で使用するための設定ファイルを提供

* [ 4gpi-networkmanager](https://github.com/mechatrax/4gpi-networkmanager/)
4GPi を NetworkManager から使用するためのツール群を提供

# これなに

Dockerに閉じ込めた2chproxy.pl

# 使い方

コンテナを残して使い回すとき（初回）
```
$ docker run --name 任意の名前 -d -p 127.0.0.1:8080:8080 hremask/2chproxy.pl
```
コンテナを残して使い回すとき（2回目以降）
```
$ docker start 初回でつけた名前
```

コンテナを残さないようにするとき

```
$ docker run --rm --name 任意の名前 -d -p 127.0.0.1:8080:8080 hremask/2chproxy.pl
```

# 壊れたかな，と思う時

```
$ docker container rm 作られたコンテナ名

$ docker run --name 任意の名前 -d -p 127.0.0.1:8080:8080 hremask/2chproxy.pl
```

# ライセンス

[MITライセンス](https://opensource.org/licenses/mit-license.php)の下で本Dockerファイルを配布します．
条項の全文はLICENSE.txtに記載します．

# これなに

Dockerに閉じ込めた2chproxy.pl

# 使い方

$ docker run --name 任意の名前 -d -p 127.0.0.1:8080:8080 hremask/2chproxy.pl

# 壊れたかな，と思う時

$ docker container rm 作られたコンテナ名
$ docker run --name 任意の名前 -d -p 127.0.0.1:8080:8080 hremask/2chproxy.pl

# ライセンス

[MITライセンス](https://opensource.org/licenses/mit-license.php)
LICENSE.txtに書いてるよ

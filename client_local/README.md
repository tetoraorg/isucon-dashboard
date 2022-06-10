# client_local

Dockerを使用せずローカルでクライアント(送信側)を立てる場合
nginxが必要です

1. まず受信側をDockerで起動

```sh
# cd ./server
docker compose up --build
```

2. td-agent(fluentd)が入ってない場合はインストール

```sh
# cd ./client_local
./install.sh
```

3. 送信側のfluentdを起動

```sh
# cd ./client_local
sudo td-agent -c ./fluentd/config/fluent_sender.conf
```

(バックグラウンドで立てる場合は`-d`)

4. その後↓などでnginxがあるサーバーにアクセスすると受信側の`/fluentd/log/access_log.*.log`にログが書き込まれます

```sh
curl localhost:80
```

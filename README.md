# isucon-dashboard

Simple EFK dashboard for ISUCON.

nginx(s) -> fluentd(s) -> fluentd -> elasticsearch -> kibana

## Quick start

```sh
cp ./server/.env.example ./server/.env
./up.sh
```

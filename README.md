# zwz-admin

基于go-admin的后台管理系统

## 开发环境

```shell
#go mod tidy
#go run main.go migrate -c=config/settings.dev.yml
go run main.go server -c=config/settings.dev.yml
```

```shell
#npm install --force
cd zwz-admin-ui;npm run dev
```

## 测试环境

```shell
make build-linux
make deploy
docker-compose pull
docker-compose -f docker-compose.yml up -d
```

ps：配置nginx解决跨域问题
# zwz-admin

基于go-admin的后台管理系统

## 后端

### 安装

```shell
go mod tidy
```

### 初始化

```shell
go run main.go migrate -c=config/settings.dev.yml
```

### 启动

```shell
go run main.go server -c=config/settings.dev.yml
```

## 前端

### 安装

```shell
npm install --force

```

### 启动

```shell
cd zwz-admin-ui
npm run dev
```
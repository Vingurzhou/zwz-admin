package api

import "github.com/Vingurzhou/zwz-admin/app/other/router"

func init() {
	//注册路由 fixme 其他应用的路由，在本目录新建文件放在init方法
	AppRouters = append(AppRouters, router.InitRouter)
}

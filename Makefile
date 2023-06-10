PROJECT:=zwz-admin

.PHONY: build
build-linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -a -installsuffix "" -o zwz-admin .

build-front:
	cd zwz-admin-ui
	npm run build:prod

deploy:
	@docker build --no-cache -t zwz-admin:latest --platform linux/amd64  .
	@docker tag zwz-admin:latest vingurzhou/zwz-admin:latest
	@docker push vingurzhou/zwz-admin:latest

	@docker build --no-cache -t zwz-admin-ui:latest --platform linux/amd64  ./zwz-admin-ui
	@docker tag zwz-admin-ui:latest vingurzhou/zwz-admin-ui:latest
	@docker push vingurzhou/zwz-admin-ui:latest
	@echo "deploy successful"
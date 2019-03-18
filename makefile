usage:
	@echo " " >&2
	@echo "make build 构建v2ray" >&2
	@echo "make clean 清除构建" >&2
	@echo " " >&2

build: config
	go build -o ${GOPATH}/bin/v2ray v2ray.com/core/main
	go build -o ${GOPATH}/bin/v2ctl v2ray.com/core/infra/control/main

clean:
	rm -rf ${GOPATH}/bin/*

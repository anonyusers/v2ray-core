编译源文件
--------

1. 下载并安装golang
```
wget https://storage.googleapis.com/golang/go${go版本号}.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go_latest.tar.gz
```
3. 设置PATH环境变量 
```
export PATH=$PATH:/usr/local/go/bin
```
4. 设置GOPATH环境变量,指向golang的工作目录
```
export GOPATH=$HOME/work
```
5. 使用cow设置http代理，二级代理为socks5
6. 设置http代理环境变量
```
export http_proxy=http://127.0.0.1:7777
export https_proxy=http://127.0.0.1:7777
```
7. 下载V2Ray源文件
```
go get -u v2ray.com/core/...
```
8. 替换源core文件为自己fork的源文件
9. 构建项目
```
go build -o $GOPATH/bin/v2ray v2ray.com/core/main
go build -o $GOPATH/bin/v2ctl v2ray.com/core/infra/control/main
```

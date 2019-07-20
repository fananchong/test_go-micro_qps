# test_go-micro_qps
测试 go-micro 服务器的 qps ，用来判断是否需要自己写 server/client/transport 插件


## 回显测试

- 测试代码：
  - [server.go](server.go)
  - [client.go](client.go)

- 机器配置： CPU 16核 ； 主频 2600
- 进程数： 1 服务器 ； 20 客户端
- 启动脚本： [test.sh](test.sh) ; 如 ./test.sh grpc
- qps 3.5w/s
- 服务器程序 CPU 占 30.7% （ 491.4 / 1600 ）
- 数据截图：
  ![p1](asset/grpc.jpg)
  ![p2](asset/cpu.jpg)


## 结论

qps 太低了

## 对比其他测试

见： https://github.com/fananchong/gotcp#%E5%9F%BA%E5%87%86%E6%B5%8B%E8%AF%95


## 分析

见： https://blog.csdn.net/u013272009/article/details/96477194
